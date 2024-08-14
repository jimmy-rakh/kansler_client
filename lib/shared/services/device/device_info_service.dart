import 'device_info.dart';

abstract class DeviceInfoService {
  Future<DeviceInfo> getDeviceData();
}
