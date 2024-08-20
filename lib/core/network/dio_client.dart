import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../features/auth/auth.dart';
import '../../shared/services/hive/main_box.dart';
import '../../shared/services/logger/logger_service.dart';
import '../error/failure.dart';
import 'interceptors/logger_interceptor.dart';
import 'interceptors/response_interceptor.dart';
import 'isolate_parser.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

@lazySingleton
class DioClient with MainBoxMixin {
  final AuthLocalDataSource _authSource;
  String? _auth;
  bool _isUnitTest = false;
  late Dio _dio;

  DioClient(this._authSource) {
    _isUnitTest = false;

    try {
      _auth = _authSource.getAuthToken();
    } catch (_) {}

    _dio = _createDio();

    if (!_isUnitTest) _dio.interceptors.add(LoggerInterceptor());
  }

  Dio get dio {
    if (_isUnitTest) {
      /// Return static dio if is unit test
      return _dio;
    } else {
      /// We need to recreate dio to avoid token issue after login
      try {
        _auth = _authSource.getAuthToken();
      } catch (_) {}

      final dio = _createDio();

      if (!_isUnitTest) {
        dio.interceptors.addAll([LoggerInterceptor(), ResponseInterceptor()]);
      }

      return dio;
    }
  }

  Dio _createDio() => Dio(
        BaseOptions(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            if (_auth != null) ...{
              'Device-Token': 'Kansler $_auth',
            },
          },
          receiveTimeout: const Duration(minutes: 1),
          connectTimeout: const Duration(minutes: 1),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      final isolateParse = IsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        log.e(e.message, stackTrace: stackTrace);
        // nonFatalError(error: e, stackTrace: stackTrace);
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    ResponseConverter<T>? converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.post(url, data: data);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 205) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (converter == null) return Right(response.data);

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      final isolateParse = IsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      print(e.response?.statusCode);
      if (!_isUnitTest) {
        log.e(e.message, stackTrace: stackTrace);
        // nonFatalError(error: e, stackTrace: stackTrace);
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> putRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    ResponseConverter<T>? converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.put(url, data: data);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 206) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (converter == null) return Right(response.data);

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      final isolateParse = IsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        log.e(e.message, stackTrace: stackTrace);
        // nonFatalError(error: e, stackTrace: stackTrace);
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> deleteRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    ResponseConverter<T>? converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.delete(url, data: data);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 204) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (converter == null) return Right(response.data);

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      final isolateParse = IsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        log.e(e.message, stackTrace: stackTrace);
        // nonFatalError(error: e, stackTrace: stackTrace);
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }
}
