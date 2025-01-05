import '../../../../core/network/constants.dart';

class AuthRemoteKeys {
  static const authApi = '${NetworkConstants.apiUrl}/auth';
  static const auth = '$authApi/client';
  static const clientConfirm = '$authApi/client-confirm';
  static const clientConfirmCode = '$authApi/client-confirm-code';
  static const clientInfo = '$authApi/client/get-info';
  static const clientRecovery = '$authApi/client-recovery';
  static const clientRegisterCompany = '$authApi/client-register-company';
  static const clientRegister = '$authApi/client-register';
  static const clientSendCode = '$authApi/client-send-code';
}
