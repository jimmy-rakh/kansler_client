import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_cid_data.freezed.dart';
part 'client_cid_data.g.dart';

@freezed
class ClientCidData with _$ClientCidData {
  factory ClientCidData({
    int? id,
    required String cid,
  }) = _ClientCidData;

  factory ClientCidData.fromJson(Map<String, dynamic> json) =>
      _$ClientCidDataFromJson(json);
}
