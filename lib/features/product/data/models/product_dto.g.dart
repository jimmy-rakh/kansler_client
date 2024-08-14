// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: (json['id'] as num).toInt(),
      organization: json['organization'] == null
          ? null
          : ProductDataDto.fromJson(
              json['organization'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : ProductDataDto.fromJson(json['category'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : ProductDataDto.fromJson(json['brand'] as Map<String, dynamic>),
      madeIn: json['madeIn'] == null
          ? null
          : ProductDataDto.fromJson(json['madeIn'] as Map<String, dynamic>),
      classifierCode: json['classifierCode'] as String?,
      classifierTitle: json['classifierTitle'] as String?,
      packagename: json['packagename'] as String?,
      packagecode: json['packagecode'] as String?,
      title: json['title'] as String,
      vendorCode: json['vendorCode'] as String?,
      nds: json['nds'] as String?,
      price: (json['price'] as num?)?.toInt(),
      measure: json['measure'] as String?,
      description: json['description'] as String?,
      actual: json['actual'] as bool?,
      bestseller: json['bestseller'] as bool?,
      discount: json['discount'] as bool?,
      promotion: json['promotion'] as bool?,
      stopList: json['stopList'] as bool?,
      quantityInBox: json['quantityInBox'] as String?,
      preOrder: json['preOrder'],
      barcode:
          (json['barcode'] as List<dynamic>).map((e) => e as String).toList(),
      arrivalDate: json['arrivalDate'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      size: json['size'] as String?,
      imageUrl: json['imageUrl'] as String?,
      inFav: json['inFav'] as bool?,
      inCart: json['inCart'] as bool?,
      hasComment: json['hasComment'] as bool?,
      stocks: (json['stocks'] as List<dynamic>?)
          ?.map((e) => StocksDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization,
      'category': instance.category,
      'brand': instance.brand,
      'madeIn': instance.madeIn,
      'classifierCode': instance.classifierCode,
      'classifierTitle': instance.classifierTitle,
      'packagename': instance.packagename,
      'packagecode': instance.packagecode,
      'title': instance.title,
      'vendorCode': instance.vendorCode,
      'nds': instance.nds,
      'price': instance.price,
      'measure': instance.measure,
      'description': instance.description,
      'actual': instance.actual,
      'bestseller': instance.bestseller,
      'discount': instance.discount,
      'promotion': instance.promotion,
      'stopList': instance.stopList,
      'quantityInBox': instance.quantityInBox,
      'preOrder': instance.preOrder,
      'barcode': instance.barcode,
      'arrivalDate': instance.arrivalDate,
      'weight': instance.weight,
      'size': instance.size,
      'imageUrl': instance.imageUrl,
      'inFav': instance.inFav,
      'inCart': instance.inCart,
      'hasComment': instance.hasComment,
      'stocks': instance.stocks,
    };
