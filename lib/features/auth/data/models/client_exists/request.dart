import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class ClientExistsRequest with _$ClientExistsRequest {
  factory ClientExistsRequest({
    required String inn,
  }) = _ClientExistsRequest;

  factory ClientExistsRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientExistsRequestFromJson(json);
}
