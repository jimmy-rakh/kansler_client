

import '../../../../core/network/constants.dart';

class AuthRemoteKeys {
  static const authApi = '${NetworkConstants.apiUrl}/auth';
  static const checkClientExist = '$authApi/check-client-exists';
  static const clientPhoneNumbers = '$authApi/client-phone-numbers/requestId';
  static const confirmCode = '$authApi/confirm-code/requestId';
  static const sendCode = '$authApi/send-code/requestId';
  static const setUserName = '$authApi/set-username/requestId';
  static const signIn = '$authApi/sign-in';
}
