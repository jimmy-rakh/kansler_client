import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info.freezed.dart';
part 'device_info.g.dart';

@Freezed(fromJson: false, toJson: true)
class DeviceInfo with _$DeviceInfo {
  factory DeviceInfo({
    required String info,
    required String name,
    required int type,
    required String imei,
    required String appVersion,
  }) = _DeviceInfo;
}
