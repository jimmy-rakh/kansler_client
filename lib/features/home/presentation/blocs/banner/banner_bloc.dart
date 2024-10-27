import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/core/enums/enums.dart';
import 'package:kansler/features/home/data/models/models.dart';
import 'package:kansler/shared/services/hive/hive.dart';
import '../../../../../shared/services/logger/logger_service.dart';
import '../../../../product/domain/entities/product.entity.dart';
import '../../../domain/repositories/products.repository.dart';

part 'banner_state.dart';

part 'banner_event.dart';

part 'banner_bloc.freezed.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> with MainBoxMixin {
  final ProductsRepository _repository;

  BannerBloc(
    this._repository,
  ) : super(const BannerState.success()) {
    on<_Fetch>(_onFetch);
    on<_FetchById>(_onFetchById);
    on<_FetchBannerProducts>(_fetchBannerProducts);
    on<_OnPrevious>(_onPrevious);
    on<_OnChange>(_onChange);
    on<_OnNext>(_onNext);
    on<_AddToCart>(_onAddToCart);
  }

  CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  final fieldController = TextEditingController();

  void _onChange(_OnChange event, Emitter<BannerState> emit) async {
    emit((state as _Success).copyWith(index: event.index));
  }

  void _onNext(_OnNext event, Emitter<BannerState> emit) async {
    buttonCarouselController.nextPage();
  }

  void _onPrevious(_OnPrevious event, Emitter<BannerState> emit) async {
    buttonCarouselController.previousPage();
  }

  void _onFetch(_Fetch event, Emitter<BannerState> emit) async {
    final res = await _repository.fetchPosters();

    res.fold(log.e, (r) {
      if (state is! _Success) {
        emit(BannerState.success(posters: r));
        return;
      }

      emit((state as _Success).copyWith(posters: r));
    });
  }

  void _onFetchById(_FetchById event, Emitter<BannerState> emit) async {
    emit(const BannerState.loadInProgress());
    final res = await _repository.fetchPosterById(event.id!);

    res.fold(log.e, (r) {
      if (state is! _Success) {
        emit(BannerState.success(poster: r));
        return;
      }
      emit((state as _Success).copyWith(poster: r));
    });
  }

  void _fetchBannerProducts(
      _FetchBannerProducts event, Emitter<BannerState> emit) async {
    emit(const BannerState.loadInProgress());
    final res = await _repository.fetchPosterProducts(id: event.id!);

    res.fold(log.e, (r) {
      if (state is! _Success) {
        emit(BannerState.success(products: r.products));
        return;
      }

      emit((state as _Success).copyWith(products: r.products));
    });
  }

  void _onAddToCart(_AddToCart event, Emitter<BannerState> emit) {
    final curr = state as _Success;

    if (curr.products == null) return;

    print(event.type);

    List<ProductEntity> products = curr.products!.map((e) {
      if (e.id == event.id) {
        switch (event.type) {
          case CheckoutType.order:
            return e.copyWith(inCart: !e.inCart!);

          case CheckoutType.preorder:
            return e.copyWith(inPreorder: !e.inPreorder!);
        }
      }
      return e;
    }).toList();

    print(products);

    emit((state as _Success).copyWith(products: products));
  }
}
