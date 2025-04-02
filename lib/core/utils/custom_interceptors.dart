import 'dart:convert';

import 'package:dio/dio.dart';

import 'log_utility.dart';

dynamic decodeJson(String responseBody) {
  return jsonDecode(responseBody);
}

class CustomInterceptor<T> extends Interceptor {
  Map<String, DateTime> requestStartTimes = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestLog = '''
    ====================== Request ======================
    URL: ${options.uri}
    Method: ${options.method}
    Headers: ${options.headers}
    Body: ${options.data}
    ''';
    LogUtility.customLog(ColorText.green(requestLog), name: 'Request');

    requestStartTimes[options.uri.toString()] = DateTime.now();

    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    final startTime = requestStartTimes[response.requestOptions.uri.toString()];
    final endTime = DateTime.now();

    final responseLog = '''
    ====================== Response ======================
    URL: ${response.realUri}
    Status Code: ${response.statusCode}
    Headers: ${response.headers}
    ''';
    LogUtility.customLog(ColorText.yellow(responseLog), name: 'Response');

    final requestDuration = endTime.difference(startTime!).inMilliseconds;

    LogUtility.customLog(
      ColorText.yellow('Request took: $requestDuration ms'),
      name: 'Performance',
    );

    LogUtility.customLog(
      ColorText.yellow(response.data.toString()),
      name: 'BODY',
    );
    LogUtility.customLog(
      ColorText.yellow(response.statusCode.toString()),
      name: 'StatusCode',
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final startTime = requestStartTimes[err.requestOptions.uri.toString()];
    final endTime = DateTime.now();

    final errorLog = '''
    ====================== Error ======================
    URL: ${err.requestOptions.uri}
    Status Code: ${err.response?.statusCode}
    Error: ${err.message}
    Response: ${err.response?.data}
    Stack Trace: ${err.stackTrace}
    ''';
    LogUtility.customLog(ColorText.red(errorLog), name: 'Error');

    if (startTime != null) {
      final requestDuration = endTime.difference(startTime).inMilliseconds;
      LogUtility.customLog(
        ColorText.red('Request took: $requestDuration ms'),
        name: 'Performance',
      );
    }

    handler.next(err);
  }
}
