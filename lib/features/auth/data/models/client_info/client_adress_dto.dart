import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_adress_dto.freezed.dart';
part 'client_adress_dto.g.dart';

@freezed
class ClientAdressDto with _$ClientAdressDto {
  factory ClientAdressDto({
    required int id,
    String? cid,
    String? name,
    String? region,
  }) = _ClientAdressDto;

  factory ClientAdressDto.fromJson(Map<String, dynamic> json) =>
      _$ClientAdressDtoFromJson(json);
}
