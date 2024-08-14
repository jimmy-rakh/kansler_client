import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/product/data/models/product_data_dto.dart';


part 'stocks_dto.freezed.dart';
part 'stocks_dto.g.dart';

@freezed
class StocksDto with _$StocksDto {
  StocksDto._();

  factory StocksDto({
    ProductDataDto? stock,
    int? quantity,
    int? quantityReserve,
  }) = _ProductDataDto;

  factory StocksDto.fromJson(Map<String, dynamic> json) =>
      _$StocksDtoFromJson(json);

}
