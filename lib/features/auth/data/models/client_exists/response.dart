import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class ClientExistsResponse with _$ClientExistsResponse {
  factory ClientExistsResponse({
    String? requestId,
  }) = _ClientExistsResponse;

  factory ClientExistsResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientExistsResponseFromJson(json);
}
