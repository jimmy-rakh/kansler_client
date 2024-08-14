// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersDtoImpl _$$OrdersDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrdersDtoImpl(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      status: json['status'] as String?,
      price: (json['price'] as num).toInt(),
      organizationOrders: (json['organizationOrders'] as List<dynamic>?)
          ?.map((e) => OrganizationOrders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersDtoImplToJson(_$OrdersDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'price': instance.price,
      'organizationOrders': instance.organizationOrders,
    };

_$OrganizationOrdersImpl _$$OrganizationOrdersImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationOrdersImpl(
      id: (json['id'] as num).toInt(),
      address: json['address'] == null
          ? null
          : AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] as String?,
      organization: OrganizationDto.fromJson(
          json['organization'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrganizationOrdersImplToJson(
        _$OrganizationOrdersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'status': instance.status,
      'organization': instance.organization,
      'price': instance.price,
    };
