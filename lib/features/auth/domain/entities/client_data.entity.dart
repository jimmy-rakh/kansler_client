import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_data.entity.freezed.dart';

@freezed
class ClientDataEntity with _$ClientDataEntity {
  factory ClientDataEntity({
    String? inn,
    String? fullName,
    String? name,
    required List<String>? phoneNumbers,
  }) = _ClientDataEntity;
}
