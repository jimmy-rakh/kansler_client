import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../app/router.dart';
import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../product/domain/entities/product_data.entity.dart';
import '../../../domain/entities/search.entity.dart';
import '../../../domain/usecases/organizations.usecase.dart';
import '../../search_screen/blocs/brands/brands_bloc.dart';

part 'filter_state.dart';
part 'filter_event.dart';
part 'filter_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final OrganizationsUseCase _organizationsUseCase;

  FilterBloc(this._organizationsUseCase) : super(const FilterState.initial()) {
    on<_Init>(_onInit);
    on<_ChooseCategories>(_onChooseCategories);
    on<_ChooseOrganizations>(_onChooseOrganizations);
    on<_ChooseBrands>(_onChooseBrands);
    on<_SetBaseView>(_onSetBaseView);
    on<_AddFilter>(_onAddFilter);
    on<_OrderBy>(_orderBy);
  }

  void _onInit(_Init event, Emitter<FilterState> emit) async {
    router.navigatorKey.currentContext!.read<BrandsBloc>();
    final res = await _organizationsUseCase.call(1);

    res.fold((l) => log.e(l), (r) {
      emit(FilterState.ready(
        search: event.searchData,
        organizations: r.products,
      ));
    });
  }

  void _onChooseCategories(_ChooseCategories event, Emitter<FilterState> emit) {
    emit((state as _Ready).copyWith(activePage: 1));
  }

  void _onChooseOrganizations(
      _ChooseOrganizations event, Emitter<FilterState> emit) {}

  void _onChooseBrands(_ChooseBrands event, Emitter<FilterState> emit) {
    emit((state as _Ready).copyWith(activePage: 2));
  }

  void _onSetBaseView(_SetBaseView event, Emitter<FilterState> emit) {
    emit((state as _Ready).copyWith(activePage: 0));
  }

  void _onAddFilter(_AddFilter event, Emitter<FilterState> emit) {
    emit((state as _Ready).copyWith(search: event.searchData));
  }

  void _orderBy(_OrderBy event, Emitter<FilterState> emit) async {
    final curr = (state as _Ready);
    emit(curr.copyWith(
        search: curr.search.copyWith(
            orderBy: event.orderBy == "Новинки"
                ? "created_at"
                : event.orderBy == "По Алфавиту"
                ? "alfabetic"
                : event.orderBy == "Подешевле"
                ? "price"
                : event.orderBy == "Подороже"
                ? "-price"
                : event.orderBy)));
  }
}
