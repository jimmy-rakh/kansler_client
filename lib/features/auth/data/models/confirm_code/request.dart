import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class ConfirmCodeRequest with _$ConfirmCodeRequest {
  factory ConfirmCodeRequest({
    required String phoneNumber,
    required String code,
  }) = _ConfirmCodeRequest;

  factory ConfirmCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCodeRequestFromJson(json);
}
