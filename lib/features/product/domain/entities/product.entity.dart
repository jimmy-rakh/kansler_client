import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/product/domain/entities/contractor.entity.dart';
import 'package:kansler/features/product/domain/entities/product_data.entity.dart';
import '../../data/models/stocks_dto.dart';

part 'product.entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  ProductEntity._();

  factory ProductEntity({
    required int id,
    ProductDataEntity? organization,
    ProductDataEntity? category,
    ProductDataEntity? brand,
    ProductDataEntity? madeIn,
    String? classifierCode,
    String? classifierTitle,
    String? packagename,
    String? packagecode,
    String? title,
    String? vendorCode,
    String? nds,
    int? price,
    int? priceDiscount,
    String? measure,
    String? description,
    bool? actual,
    bool? bestseller,
    bool? discount,
    bool? promotion,
    bool? stopList,
    String? quantityInBox,
    dynamic preOrder,
    List<String>? barcode,
    String? arrivalDate,
    double? weight,
    String? size,
    String? imageUrl,
    bool? inFav,
    bool? inCart,
    bool? inPreorder,
    bool? hasComment,
    List<StocksDto>? stocks,
    ContractorEntity? contractor,
  }) = _ProductEntity;

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
