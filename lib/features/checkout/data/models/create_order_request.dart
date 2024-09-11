import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';

part 'create_order_request.g.dart';

enum PaymentType { by_transfer, BY_CASH, BY_CARD }
enum DeliveryType { pickup, delivery }

@Freezed(toJson: true, fromJson: false)
class CreateOrderRequest with _$CreateOrderRequest {
  factory CreateOrderRequest({
    List<int>? cartProduct,
    String? paymentType,
    String? deliveryType,
  }) = _CreateOrderRequest;
}
