import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/product/data/models/product_data_dto.dart';
import 'package:kansler/features/product/data/models/stocks_dto.dart';
import '../../domain/entities/product.entity.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  ProductDto._();

  factory ProductDto({
    required int id,
    ProductDataDto? organization,
    ProductDataDto? category,
    ProductDataDto? brand,
    ProductDataDto? madeIn,
    String? classifierCode,
    String? classifierTitle,
    String? packagename,
    String? packagecode,
    String? title,
    String? vendorCode,
    String? nds,
    int? price,
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
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  ProductEntity toEntity() => ProductEntity(
      id: id,
      organization: organization?.toEntity(),
      category: category?.toEntity(),
      brand: brand?.toEntity(),
      madeIn: madeIn?.toEntity(),
      classifierCode: classifierCode,
      classifierTitle: classifierTitle,
      packagename: packagename,
      packagecode: packagecode,
      title: title,
      vendorCode: vendorCode,
      nds: nds,
      price: price,
      measure: measure,
      description: description,
      actual: actual,
      bestseller: bestseller,
      discount: discount,
      promotion: promotion,
      stopList: stopList,
      quantityInBox: quantityInBox,
      preOrder: preOrder,
      barcode: barcode,
      arrivalDate: arrivalDate,
      weight: weight,
      size: size,
      imageUrl: imageUrl,
      inFav: inFav,
      inCart: inCart,
      inPreorder: inPreorder,
      hasComment: hasComment,
      stocks: stocks);
}
