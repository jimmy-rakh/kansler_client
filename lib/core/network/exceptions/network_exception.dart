import 'package:dio/dio.dart';

class ApiException extends DioException {
  static const codeSuccess = 0;
  static const _codeUnknown = 1000;

  final int? code;
  final dynamic cause;
  final String? _message;

  ApiException({
    this.code = _codeUnknown,
    String? message,
    this.cause,
    required super.requestOptions,
  }) : _message = message;

  @override
  String get message => _message ?? cause?.toString() ?? '';

  @override
  String toString() {
    var str = 'ApiException{code: $code, message: $message, cause: $cause}';
    if (cause is Error) {
      str += '\n${(cause as Error).stackTrace}';
    }
    return str;
  }
}
