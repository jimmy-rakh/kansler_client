import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/features/home/data/models/models.dart';
import 'package:kansler/shared/services/hive/hive.dart';

import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../auth/data/sources/local.dart';
import '../../../../auth/domain/usecases/set_auth_token.usecase.dart';
import '../../../domain/repositories/products.repository.dart';

part 'banner_state.dart';

part 'banner_event.dart';

part 'banner_bloc.freezed.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> with MainBoxMixin {
  final ProductsRepository _repository;
  final SetSession _setSessionUseCase;
  final AuthLocalDataSource _authSource;
  BannerBloc(this._repository,this._setSessionUseCase,this._authSource) : super(const BannerState.loadInProgress()) {
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

    String? getSessionKey = _authSource.getSessionKey();

    if(getSessionKey == null) {
      final session = await _repository.session();
      String key = session.fold((l) => '', (r) => r.sessionKey ?? '');

      await _setSessionUseCase.call(key);
    }


    print("------------${getSessionKey}");

    final res = await _repository.fetchPosters();

    res.fold(log.e, (r) => emit(BannerState.success(r)));
  }
}
