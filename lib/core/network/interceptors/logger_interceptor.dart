import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../shared/services/logger/logger_service.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestPath = options.path;
    // Log request details
    if (!kIsWeb || kDebugMode) {
      log.d(
          'Request Headers\n${_prettyJsonEncode(options.headers)}${options.queryParameters.isEmpty ? '' : '\n\nRequest Query Parameters\n${_prettyJsonEncode(options.queryParameters)}'}${options.data == null ? '' : '\n\nRequest Data\n${_prettyJsonEncode(options.data)}'}',
          stackTrace: StackTrace.fromString(
            '${options.method} Request => $requestPath',
          ));
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (!kIsWeb || kDebugMode) {
      log.d(
        'Data: ${_prettyJsonEncode(response.data)}',
        stackTrace: StackTrace.fromString(
          'Response => ${response.requestOptions.path}\nStatusCode: ${response.statusCode}',
        ),
      );
    }

    if ((response.statusCode ?? 400) > 300) {
      return handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
        ),
        true,
      );
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (!kIsWeb || kDebugMode) {
      log.e(
        'Data: ${_prettyJsonEncode(err.response)}',
        time: DateTime.now(),
        stackTrace: StackTrace.fromString(
          'Response => ${err.response?.realUri.path}\nStatusCode: ${err.response?.statusCode}',
        ),
      );
    }

    super.onError(err, handler);
  }

  // Helper method to convert data to pretty JSON format
  String _prettyJsonEncode(dynamic data) {
    try {
      const encoder = JsonEncoder.withIndent('  ');
      final jsonString = encoder.convert(data);
      return jsonString;
    } catch (e) {
      return data.toString();
    }
  }
}
