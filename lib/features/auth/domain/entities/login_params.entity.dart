import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../shared/services/device/device_info.dart';

part 'login_params.entity.freezed.dart';

@freezed
class LoginParamsEntity with _$LoginParamsEntity {
  const factory LoginParamsEntity({
    required String username,
    required String password,
    required String fcmToken,
    required DeviceInfo device,
  }) = _LoginParamsEntity;
}
