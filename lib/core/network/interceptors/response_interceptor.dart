import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:kansler/core/extensions/context.dart';

import '../../../app/di.dart';
import '../../../app/router.dart';
import '../../../features/auth/data/sources/local.dart';
import '../exceptions/network_exception.dart';


class ResponseInterceptor extends Interceptor {
  final _authSource = getIt<AuthLocalDataSource>();
  String? _auth;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!options.headers.containsKey('Device-Token')) {
      _auth = _authSource.getAuthToken();
      if (_auth != null) options.headers['Device-Token'] = 'Mirel $_auth';
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode! > 206) {
      handler.reject(
        ApiException(
          code: response.statusCode,
          message: response.statusMessage,
          requestOptions: response.requestOptions,
        ),
        true,
      );
      return;
    }

    handler.next(response);
    return;
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.response?.data == null) {
      return handler.next(err);
    } else {
      bool online = true;
      if (online == false) {}
    }
    if (err.response!.data is String) return handler.next(err);

    final exception = ApiException(
      code: err.response?.statusCode,
      message: err.response?.data['error_code'][0],
      requestOptions: err.requestOptions,
    );

    if(exception.message.isNotEmpty) {
      router.navigatorKey.currentContext!
        .showToast('errors.${exception.message}'.tr());
    }

    return handler.reject(exception);
  }
}
