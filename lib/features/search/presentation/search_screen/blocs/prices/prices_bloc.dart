import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kansler/features/search/domain/entities/search.entity.dart';
import 'package:kansler/features/search/domain/repositories/search.repository.dart';
import 'dart:html' as html;

part 'prices_state.dart';
part 'prices_event.dart';
part 'prices_bloc.freezed.dart';

@lazySingleton
class PricesBloc extends Bloc<PricesEvent, PricesState> {
  final SearchRepository _repository;

  PricesBloc(this._repository) : super(const PricesState()) {
    on<_AddFilter>((event, emit) {
      emit(state.copyWith(filterData: event.searchData));
    });
    on<_GetLink>((event, emit) async {
      emit(state.copyWith(status: PricesStatus.loading));

      final res = await _repository
          .getFile(state.filterData ?? SearchEntity(title: ''));
      res.fold(
        (l) => print(l.toString()),
        (r) => downloadFile(r),
      );
      emit(state.copyWith(status: PricesStatus.loaded));
    });
  }
  void downloadFile(String url) {
    final anchor =
        html.AnchorElement(href: 'data:application/octet-stream;base64,$url')
          ..target = 'blank';

// add the name and extension
    anchor.download = 'price.xlsx';

// add the anchor to the document body

    html.document.body?.append(anchor);

// trigger download
    anchor.click();
    anchor.remove();
  }
}
