import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/product/domain/entities/product_data.entity.dart';

part 'stocks.entity.freezed.dart';

@freezed
class StocksDtoEntity with _$StocksDtoEntity {
  factory StocksDtoEntity({
    required ProductDataEntity stock,
    required int quantity,
    required int quantityReserve,
  }) = _StocksDtoEntity;
}
