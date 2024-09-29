import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../profile/data/models/address_dto.dart';
import '../../../profile/data/models/company_dto.dart';

part 'orders_dto.freezed.dart';

part 'orders_dto.g.dart';

@freezed
class OrdersDto with _$OrdersDto {
  factory OrdersDto({
    required int id,
    required String createdAt,
    String? status,
    required int price,
    List<OrganizationOrders>? organizationOrders,
    ManagerDto? agent,
    String? paymentType,
    String? paymentStatus,
    String? deliveryType,
    num? rating,
  }) = _OrdersDto;

  factory OrdersDto.fromJson(Map<String, dynamic> json) =>
      _$OrdersDtoFromJson(json);
}

@freezed
class OrganizationOrders with _$OrganizationOrders {
  factory OrganizationOrders({
    required int id,
    AddressDto? address,
    String? status,
    required OrganizationDto organization,
    int? price,
  }) = _OrganizationOrders;

  factory OrganizationOrders.fromJson(Map<String, dynamic> json) =>
      _$OrganizationOrdersFromJson(json);
}
