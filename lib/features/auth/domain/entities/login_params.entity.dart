import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kansler/core/enums/client_type.dart';
import '../../../../shared/services/device/device_info.dart';

part 'login_params.entity.freezed.dart';

@freezed
class LoginParamsEntity with _$LoginParamsEntity {
  const factory LoginParamsEntity({
    required String value,
    required ClientType clientType,
    required String fcmToken,
    required DeviceInfo device,
  }) = _LoginParamsEntity;
}
