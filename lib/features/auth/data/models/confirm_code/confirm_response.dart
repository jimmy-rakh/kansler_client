import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_response.freezed.dart';
part 'confirm_response.g.dart';

@freezed
class ConfirmResponse with _$ConfirmResponse {
  factory ConfirmResponse({required String deviceToken}) = _ConfirmResponse;

  factory ConfirmResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmResponseFromJson(json);
}
