import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/client_data.entity.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class ClientDataResponse with _$ClientDataResponse {
  ClientDataResponse._();

  factory ClientDataResponse({
    String? inn,
    String? fullName,
    String? name,
    required List<String>? phoneNumbers,
  }) = _ClientDataResponse;

  factory ClientDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientDataResponseFromJson(json);

  ClientDataEntity toEntity() => ClientDataEntity(
        inn: inn,
        fullName: fullName,
        name: name,
        phoneNumbers: phoneNumbers,
      );
}
