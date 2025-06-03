import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../../../api/api.dart' as api;
import '../../../../api/storage_key.dart';
import '../../../../core/constent/app_text.dart';
import '../../../../core/error/app_error.dart';
import '../../../../core/error/app_success.dart';
import '../../../../core/models/login_model.dart';
import '../../../../core/payload/register_account_payload.dart';
import '../../../../core/utils/log_utility.dart';
import '../../../../core/utils/type_def.dart';
import '../../../../service/app_http_service.dart';
import '../../../../service/local_storage_service.dart';
import '../models/current_user_model.dart';
import 'auth_datasource.dart';

class AuthDatasourceImpl extends AuthDatasource {
  AuthDatasourceImpl({required this.http, required this.storage});
  final AppHttp http;
  final LocalStorage storage;

  @override
  AppTypeResponse<CurrentUserModel> login({required LoginModel login}) async {
    final response = await http.post(
      path: api.login,
      data: login.toMap(),
      token: false,
    );
    return response.fold(
      (error) {
        return Left(ErrorMessage(message: error.message));
      },
      (response) async {
        final statusCode = response.data['statusCode'] ?? response.statusCode;
        if (statusCode != null && statusCode <= 201) {
          final token = response.data['refresh'];
          var item = SecureStorageItem(key: StorageKey.token, value: token);
          var userInfo = SecureStorageItem(
            key: StorageKey.userInfo,
            value: json.encode(response.data),
          );
          var userCredential = SecureStorageItem(
            key: StorageKey.userInfo,
            value: json.encode(login.toMap()),
          );
          await storage.write(item);
          await storage.write(userInfo);
          await storage.write(userCredential);
          return Right(CurrentUserModel(id: '', name: '', email: login.email));
        } else {
          if (statusCode != null && statusCode >= 400 && statusCode <= 500) {
            return Left(
              ErrorMessage(message: response.data['message'].toString()),
            );
          } else {
            return Left(
              ErrorMessage(
                message: response.statusMessage ?? AppText.somethingWentWrong,
              ),
            );
          }
        }
      },
    );
  }

  @override
  AppTypeResponse<CurrentUserModel> currentUser() async {
    try {
      final userInfo = await storage.read(StorageKey.userInfo);
      LogUtility.info('userInfo: $userInfo');
      if (userInfo != null) {
        final data = json.decode(userInfo as String);
        return Right(CurrentUserModel.fromMap(data as JsonMap));
      }
    } catch (e) {
      return const Left(ErrorMessage(message: 'Session EXP'));
    }
    return const Left(ErrorMessage(message: 'Not Found'));
  }

  @override
  Future<bool?> logout() async {
    await storage.deleteAll();
    return true;
  }

  @override
  AppSuccessResponse registerAccount({
    required RegisterAccountPayload registerAccount,
  }) async {
    final response = await http.post(
      path: api.registerAccount,
      token: false,
      data: registerAccount.toMap(),
    );
    return response.fold(
      (error) {
        return Left(ErrorMessage(message: error.message));
      },
      (success) {
        try {
          final statusCode =
              (success.data['statusCode'] as int?) ?? success.statusCode;
          final data = success.data;
          if (statusCode <= 201) {
            return Right(
              SuccessMessage(
                message:
                    data['message'] as String? ??
                    'Account Registered SuccessFully',
              ),
            );
          } else {
            return Left(
              ErrorMessage(
                message:
                    data['message'] as String? ?? AppText.somethingWentWrong,
              ),
            );
          }
        } catch (e) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  // @override
  // AppTypeResponse<List<AwsSignedUrlModel>> generateSignedUrl(
  //     List<String> extensions) async {
  //   final response = await http.post(
  //     path: api.awsSignedUrl,
  //     data: {'fileExtensions': extensions},
  //     token: false,
  //   );
  //   return response.fold(
  //     (error) {
  //       return Left(ErrorMessage(message: error.message));
  //     },
  //     (success) {
  //       final data = success.data;
  //       final statusCode = (data['statusCode'] as int?) ?? success.statusCode;
  //       if (statusCode <= 201) {
  //         final awsSignedUrls = <AwsSignedUrlModel>[];
  //         for (final item in data['preSingedUrl'] as List) {
  //           awsSignedUrls.add(AwsSignedUrlModel.fromMap(item as JsonMap));
  //         }
  //         return Right(awsSignedUrls);
  //       }
  //       return Left(
  //         ErrorMessage(
  //             message:
  //                 (data['message'] as String?) ?? AppText.somethingWentWrong),
  //       );
  //     },
  //   );
  // }

  // @override
  // AppSuccessResponse upload(
  //     {required String fileName, required String url}) async {
  //   final file = File(fileName);
  //   LogUtility.info('fileName : $fileName');
  //   LogUtility.info('Url : $url');
  //   final response = await http.put(
  //     path: url,
  //     token: false,
  //     data: file.openRead(),
  //     options: Options(
  //       responseType: ResponseType.plain,
  //       headers: {
  //         'Content-Type': 'application/octet-stream',
  //         'Content-Length': file.lengthSync().toString(),
  //       },
  //     ),
  //   );
  //   return response.fold(
  //     (error) {
  //       return Left(ErrorMessage(message: error.message));
  //     },
  //     (success) {
  //       final statusCode = success.statusCode;
  //       if (statusCode <= 201) {
  //         return const Right(SuccessMessage(message: 'uploaded'));
  //       }
  //       return Left(
  //         ErrorMessage(message: AppText.somethingWentWrong),
  //       );
  //     },
  //   );
  // }
}
