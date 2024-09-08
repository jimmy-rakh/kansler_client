import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/features/auth/data/models/client_info/client_adress_dto.dart';
import 'package:kansler/features/auth/data/models/client_info/client_cid_data.dart';

part 'client_info_response.freezed.dart';
part 'client_info_response.g.dart';

@freezed
class ClientInfoResponse with _$ClientInfoResponse {
  factory ClientInfoResponse({
    int? id,
    required String name,
    List<String>? phoneNumbers,
    ClientCidData? parent,
    String? region,
    List<ClientAdressDto>? deliveryaddressSet,
  }) = _ClientInfoResponse;

  factory ClientInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientInfoResponseFromJson(json);
}
