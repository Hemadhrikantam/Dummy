import 'package:dio/dio.dart';

class AppResponse {
  AppResponse({
    required this.headers,
    this.data,
    required this.statusCode,
    this.statusMessage,
  });

  factory AppResponse.fromDioResponse(Response response) {
    return AppResponse(
      data: response.data,
      statusCode: response.statusCode ?? 9999,
      statusMessage: response.statusMessage,
      headers: response.headers,
    );
  }
  dynamic data;
  int statusCode;
  String? statusMessage;
  Headers headers;
}
