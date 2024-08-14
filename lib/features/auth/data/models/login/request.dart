import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/services/device/device_info.dart';
import '../../../domain/entities/login_params.entity.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@Freezed(fromJson: false, toJson: true)
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    required String username,
    required String password,
    required String fcmToken,
    required DeviceInfo device,
  }) = _LoginRequest;

  static LoginRequest fromEntity(LoginParamsEntity entity) => LoginRequest(
        username: entity.username,
        password: entity.password,
        fcmToken: entity.fcmToken,
        device: entity.device,
      );
}
