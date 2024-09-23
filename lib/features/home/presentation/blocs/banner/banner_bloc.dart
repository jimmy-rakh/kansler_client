import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/home/data/models/models.dart';

import '../../../../../shared/services/logger/logger_service.dart';
import '../../../domain/repositories/products.repository.dart';

part 'banner_state.dart';

part 'banner_event.dart';

part 'banner_bloc.freezed.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> {
  ProductsRepository _posters;

  BannerBloc(this._posters) : super(const BannerState.loadInProgress()) {
    on<_Fetch>(_onFetch);
    on<_OnChange>(_onChange);
    on<_OnNext>(_onNext);
    on<_OnPrevious>(_onPrevious);
    add(const BannerEvent.fetch());
  }

  CarouselSliderController buttonCarouselController = CarouselSliderController();

  void _onChange(_OnChange event, Emitter<BannerState> emit) async {
    emit((state as _Success)
        .copyWith(index:event.index));
  }
  void _onNext(_OnNext event, Emitter<BannerState> emit) async {
   buttonCarouselController.nextPage();
  }
  void _onPrevious(_OnPrevious event, Emitter<BannerState> emit) async {
    buttonCarouselController.previousPage();
  }

  void _onFetch(_Fetch event, Emitter<BannerState> emit) async {
    final res = await _posters.fetchPosters();

    res.fold(log.e, (r) => emit(BannerState.success(r)));
  }
}
