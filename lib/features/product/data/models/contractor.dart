import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/product/data/models/stocks_dto.dart';

import '../../domain/entities/contractor.entity.dart';


part 'contractor.freezed.dart';
part 'contractor.g.dart';

@freezed
class Contractor with _$Contractor {
  Contractor._();

  factory Contractor({
    int? price,
    List<StocksDto>? stocks,
  }) = _Contractor;

  factory Contractor.fromJson(Map<String, dynamic> json) =>
      _$ContractorFromJson(json);

  ContractorEntity toEntity() => ContractorEntity(price: price, stocks: stocks);

}
