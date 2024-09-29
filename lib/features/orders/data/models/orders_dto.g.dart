// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersDtoImpl _$$OrdersDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrdersDtoImpl(
      id: (json['id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      status: json['status'] as String?,
      price: (json['price'] as num).toInt(),
      organizationOrders: (json['organization_orders'] as List<dynamic>?)
          ?.map((e) => OrganizationOrders.fromJson(e as Map<String, dynamic>))
          .toList(),
      agent: json['agent'] == null
          ? null
          : ManagerDto.fromJson(json['agent'] as Map<String, dynamic>),
      paymentType: json['payment_type'] as String?,
      paymentStatus: json['payment_status'] as String?,
      deliveryType: json['delivery_type'] as String?,
      rating: json['rating'] as num?,
    );

Map<String, dynamic> _$$OrdersDtoImplToJson(_$OrdersDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'status': instance.status,
      'price': instance.price,
      'organization_orders':
          instance.organizationOrders?.map((e) => e.toJson()).toList(),
      'agent': instance.agent?.toJson(),
      'payment_type': instance.paymentType,
      'payment_status': instance.paymentStatus,
      'delivery_type': instance.deliveryType,
      'rating': instance.rating,
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
      'address': instance.address?.toJson(),
      'status': instance.status,
      'organization': instance.organization.toJson(),
      'price': instance.price,
    };
