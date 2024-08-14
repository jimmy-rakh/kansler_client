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
    required ProductDataDto? organization,
    required ProductDataDto? category,
    required ProductDataDto? brand,
    required ProductDataDto? madeIn,
    required String? classifierCode,
    required String? classifierTitle,
    required String? packagename,
    required String? packagecode,
    required String title,
    required String? vendorCode,
    required String? nds,
    required int? price,
    required String? measure,
    required String? description,
    required bool? actual,
    required bool? bestseller,
    required bool? discount,
    required bool? promotion,
    required bool? stopList,
    required String? quantityInBox,
    required dynamic preOrder,
    required List<String> barcode,
    required String? arrivalDate,
    required double? weight,
    required String? size,
    required String? imageUrl,
    required bool? inFav,
    required bool? inCart,
    required bool? hasComment,
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
      hasComment: hasComment,
      stocks: stocks);
}
