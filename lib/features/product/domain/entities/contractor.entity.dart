import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/product/domain/entities/product_data.entity.dart';
import '../../data/models/stocks_dto.dart';

part 'contractor.entity.freezed.dart';

@freezed
class ContractorEntity with _$ContractorEntity {
  ContractorEntity._();

  factory ContractorEntity({
    int? price,
    List<StocksDto>? stocks,
  }) = _ContractorEntity;

  int get leftQuantity {
    int res = 0;
    for (var stock in (stocks ?? <StocksDto>[])) {
      if ((stock.quantity ?? 0) > 0) {
        res += stock.quantity!;
      }
    }

    return res;
  }
}
