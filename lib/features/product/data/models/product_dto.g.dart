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
      madeIn: json['made_in'] == null
          ? null
          : ProductDataDto.fromJson(json['made_in'] as Map<String, dynamic>),
      classifierCode: json['classifier_code'] as String?,
      classifierTitle: json['classifier_title'] as String?,
      packagename: json['packagename'] as String?,
      packagecode: json['packagecode'] as String?,
      title: json['title'] as String?,
      vendorCode: json['vendor_code'] as String?,
      nds: json['nds'] as String?,
      price: (json['price'] as num?)?.toInt(),
      priceDiscount: (json['price_discount'] as num?)?.toInt(),
      measure: json['measure'] as String?,
      description: json['description'] as String?,
      actual: json['actual'] as bool?,
      bestseller: json['bestseller'] as bool?,
      discount: json['discount'] as bool?,
      promotion: json['promotion'] as bool?,
      stopList: json['stop_list'] as bool?,
      quantityInBox: json['quantity_in_box'] as String?,
      preOrder: json['pre_order'],
      barcode:
          (json['barcode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      arrivalDate: json['arrival_date'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      size: json['size'] as String?,
      imageUrl: json['image_url'] as String?,
      inFav: json['in_fav'] as bool?,
      inCart: json['in_cart'] as bool?,
      inPreorder: json['in_preorder'] as bool?,
      hasComment: json['has_comment'] as bool?,
      stocks: (json['stocks'] as List<dynamic>?)
          ?.map((e) => StocksDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      contractor: json['contractor'] == null
          ? null
          : Contractor.fromJson(json['contractor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization': instance.organization?.toJson(),
      'category': instance.category?.toJson(),
      'brand': instance.brand?.toJson(),
      'made_in': instance.madeIn?.toJson(),
      'classifier_code': instance.classifierCode,
      'classifier_title': instance.classifierTitle,
      'packagename': instance.packagename,
      'packagecode': instance.packagecode,
      'title': instance.title,
      'vendor_code': instance.vendorCode,
      'nds': instance.nds,
      'price': instance.price,
      'price_discount': instance.priceDiscount,
      'measure': instance.measure,
      'description': instance.description,
      'actual': instance.actual,
      'bestseller': instance.bestseller,
      'discount': instance.discount,
      'promotion': instance.promotion,
      'stop_list': instance.stopList,
      'quantity_in_box': instance.quantityInBox,
      'pre_order': instance.preOrder,
      'barcode': instance.barcode,
      'arrival_date': instance.arrivalDate,
      'weight': instance.weight,
      'size': instance.size,
      'image_url': instance.imageUrl,
      'in_fav': instance.inFav,
      'in_cart': instance.inCart,
      'in_preorder': instance.inPreorder,
      'has_comment': instance.hasComment,
      'stocks': instance.stocks?.map((e) => e.toJson()).toList(),
      'contractor': instance.contractor?.toJson(),
    };
