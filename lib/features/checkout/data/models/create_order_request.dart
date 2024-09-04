import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

@Freezed(toJson: true, fromJson: false)
class CreateOrderRequest with _$CreateOrderRequest {
  factory CreateOrderRequest({
    List<int>? cartProduct,
  }) = _CreateOrderRequest;
}
