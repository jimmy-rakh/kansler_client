import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_response.freezed.dart';
part 'basic_response.g.dart';

@Freezed(fromJson: true, toJson: false)
class BasicResponse with _$BasicResponse {
  factory BasicResponse({
    required bool success,
    String? errorMessage,
  }) = _BasicResponse;

  factory BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicResponseFromJson(json);
}
