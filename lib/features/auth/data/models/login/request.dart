import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/core/enums/client_type.dart';

import '../../../../../shared/services/device/device_info.dart';
import '../../../domain/entities/login_params.entity.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@Freezed(fromJson: false, toJson: true)
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    required String value,
    required ClientType clientType,
    // required String fcmToken,
    required DeviceInfo device,
  }) = _LoginRequest;

  static LoginRequest fromEntity(LoginParamsEntity entity) => LoginRequest(
        value: entity.value,
        clientType: entity.clientType,
        // fcmToken: entity.fcmToken,
        device: entity.device,
      );
}
