import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/service/app_http_service.dart' show AppHttp;
import 'package:dummy/service/local_storage_service.dart';

import '../../api/storage_key.dart';
import '../constent/app_text.dart';
import '../error/app_error.dart';
import '../models/app_http_response.dart';

class AppHttpImpl extends AppHttp {
  AppHttpImpl(this._dio, this._storage);
  Future<Options> get defaultHeader async {
    return Options(
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  final Dio _dio;
  final LocalStorage _storage;

  @override
  AppHttpResponse delete({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return Left(ErrorMessage(message: AppText.serverDown));
        }
      }
      final response = await _dio.delete(path,
          data: data,
          options: token ? tokenHead! : options ?? await defaultHeader,
          queryParameters: queryParameters);
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse get(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return Left(ErrorMessage(message: AppText.sessionOut));
        }
      }

      final response = await _dio.get(
        path,
        data: data,
        options: token ? tokenHead! : options ?? await defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse post(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return Left(ErrorMessage(message: AppText.sessionOut));
        }
      }
      final response = await _dio.post(
        path,
        data: data,
        options: token ? tokenHead! : options ?? await defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse update(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return Left(ErrorMessage(message: AppText.sessionOut));
        }
      }
      final response = await _dio.put(
        path,
        data: data,
        options: token ? tokenHead! : options ?? await defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse put(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return Left(ErrorMessage(message: AppText.sessionOut));
        }
      }
      final response = await _dio.put(
        path,
        data: data,
        options: token ? tokenHead! : options ?? await defaultHeader,
        queryParameters: queryParameters,
      );

      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse putFile(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return Left(ErrorMessage(message: AppText.sessionOut));
        }
      }
      final response = await _dio.post(
        path,
        data: data,
        options: token ? tokenHead! : options ?? await defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return Left(ErrorResponse.timeOutException);
    }
  }

  AppError _dioErroParse(DioException dioError) {
    if (dioError.response != null) {
      try {
        final data = dioError.response!.data;
        final statusCode = dioError.response!.statusCode;
        final statusMessage = dioError.response!.statusMessage;
        if (statusCode != null && statusCode >= 400 && statusCode < 500) {
          return ErrorMessage(
            message: (data['message'] ??
                data['error'] ??
                statusMessage ??
                AppText.somethingWentWrong) as String,
          );
        }
        if (statusCode != null && statusCode >= 500) {
          return ErrorMessage(message: AppText.serverDown);
        }
        return ErrorMessage(
          message: (data['message'] ??
              statusMessage ??
              AppText.somethingWentWrong) as String,
        );
      } catch (e) {
        return ErrorMessage(message: dioError.message ?? AppText.serverDown);
      }
    } else {
      return ErrorMessage(message: dioError.message ?? AppText.serverDown);
    }
  }

  Future<Options?> _headerWithToken() async {
    final token = await _storage.read(StorageKey.token);
    if (token != null) {
      return Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
    }
    return null;
  }

  // Future<String> _retriveLanguage() async {
  //   final language = await _storage.read(StorageKey.language);
  //   if (language != null) {
  //     return language as String;
  //   }
  //   return 'en';
  // }
}
