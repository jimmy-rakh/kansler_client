import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/core/enums/client_type.dart';

import '../../../../../shared/services/device/device_info.dart';
import '../../../domain/entities/login_params.entity.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@Freezed(fromJson: false, toJson: true)
class AuthRequest with _$AuthRequest {
  factory AuthRequest({
    required String value,
    required ClientType clientType,
    required String fcmToken,
    required DeviceInfo device,
  }) = _AuthRequest;

  static AuthRequest fromEntity(LoginParamsEntity entity) => AuthRequest(
        value: entity.value,
        clientType: entity.clientType,
        fcmToken: entity.fcmToken,
        device: entity.device,
      );
}
