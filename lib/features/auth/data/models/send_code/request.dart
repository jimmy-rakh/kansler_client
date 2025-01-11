import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class SendCodeRequest with _$SendCodeRequest {
  factory SendCodeRequest({
    required String phoneNumber,
    required String? hashedCode,
  }) = _SendCodeRequest;

  factory SendCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendCodeRequestFromJson(json);
}
