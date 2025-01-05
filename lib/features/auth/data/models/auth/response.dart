import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@Freezed(fromJson: true, toJson: false)
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required String requestId,
    required bool isExists,
    bool? hasPass,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
