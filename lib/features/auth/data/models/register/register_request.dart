// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/auth/data/models/register/address_request.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  factory RegisterRequest({
    required String name,
    required String username,
    required String password,
    required String phoneNumber,
    @JsonKey(includeIfNull: false) int? addressesId,
    @JsonKey(includeToJson: false) required String requestId,
    AddressRequest? addresses,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
