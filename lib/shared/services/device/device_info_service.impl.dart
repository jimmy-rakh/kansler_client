import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:unique_identifier/unique_identifier.dart';

import 'device_info.dart';
import 'device_info_service.dart';

@Injectable(as: DeviceInfoService)
class DeviceInfoServiceImpl implements DeviceInfoService {
  @override
  Future<DeviceInfo> getDeviceData() async {
    DeviceInfoPlugin infoPlugin = DeviceInfoPlugin();
    int deviceType = Platform.isAndroid ? 1 : 2;
    String deviceInfo;
    String deviceName;
    String appId;
    String version;
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await infoPlugin.androidInfo;
      deviceInfo = androidInfo.brand;
      deviceName = androidInfo.model;
      version = androidInfo.version.release.toString();
      appId = await UniqueIdentifier.serial ?? androidInfo.id.toString();
    } else {
      IosDeviceInfo iosInfo = await infoPlugin.iosInfo;
      deviceInfo = iosInfo.utsname.sysname;
      deviceName = iosInfo.utsname.machine;
      version = iosInfo.utsname.version.toString();
      appId = iosInfo.identifierForVendor.toString().replaceAll('-', '');
    }

    return DeviceInfo(
      info: deviceInfo,
      imei: appId,
      name: deviceName,
      appVersion: version,
      type: deviceType,
    );
  }
}
