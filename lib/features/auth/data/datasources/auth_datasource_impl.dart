import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/enum/upload_type.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/features/auth/data/models/presign_model.dart';
import 'package:dummy/features/auth/data/models/send_otp_model.dart';
import 'package:dummy/features/signup/data/models/enum_model.dart';

import '../../../../api/api.dart' as api;
import '../../../../api/storage_key.dart';
import '../../../../core/constant/app_text.dart';
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
        LogUtility.error('OTP verification failed: $ErrorMessage}');
        return Left(ErrorMessage(message: error.message));
      },
      (response) async {
        final statusCode = response.data['statusCode'] ?? response.statusCode;
        if (statusCode != null && statusCode <= 201) {
          final token = response.data['access_token'];
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
          return Right(
            CurrentUserModel(
              message: response.data['message'],
              user: UserModel.fromMap(response.data['user']),
              isPetCreated: response.data['is_pet_created'],
            ),
          );
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
  AppTypeResponse<LoginModel> currentUser() async {
    try {
      final userInfo = await storage.read(StorageKey.userInfo);
      LogUtility.info('userInfo: $userInfo');
      if (userInfo != null) {
        final data = json.decode(userInfo as String);
        return Right(LoginModel.fromMap(data as JsonMap));
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

  @override
  AppTypeResponse<SendOtpModel> sendOtp({required String phone}) async {
    final response = await http.post(
      path: api.sendOTP,
      data: {"phone": phone},
      token: false,
    );
    return response.fold(
      (error) {
        LogUtility.error(error.message);
        return Left(ErrorMessage(message: error.message));
      },
      (success) {
        try {
          final statusCode =
              (success.data['statusCode'] as int?) ?? success.statusCode;
          final data = success.data;
          if (statusCode <= 201) {
            return Right(
              SendOtpModel(
                message: data['message'] as String? ?? 'Otp sent successfully',
                isRegistered: data['isRegistered'] as bool? ?? false,
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
          LogUtility.error('$e');
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppTypeResponse<CurrentUserModel> registerUser({
    required String phone,
    required String userType,
  }) async {
    final response = await http.post(
      path: api.login,
      data: {"mobile_number": phone, "account_type": userType},
      token: false,
    );
    return response.fold(
      (error) {
        return Left(ErrorMessage(message: error.message));
      },
      (success) async {
        try {
          final statusCode =
              (success.data['statusCode'] as int?) ?? success.statusCode;
          final data = success.data;
          LogUtility.warning(data.toString());
          if (statusCode <= 201 && data['status'] == 'success') {
            if (data['data']['accessToken'] != null) {
              var item = SecureStorageItem(
                key: StorageKey.token,
                value: data['data']['accessToken'],
              );
              var usercred = SecureStorageItem(
                key: StorageKey.userCred,
                value: json.encode({'phone': phone, 'account_type': userType}),
              );
              await storage.write(item);
              await storage.write(usercred);
            }
            return Right(
              CurrentUserModel(
                message: data['message'] as String? ?? '',
                user: UserModel.fromMap(data['data']),
                isPetCreated: !(data['data']['requiresOnboarding'] ?? true),
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
          LogUtility.error('$e');
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppTypeResponse<EnumModel> enums() async {
    final response = await http.get(path: api.enums, token: false);
    return response.fold(
      (error) {
        LogUtility.error(error.message);
        return Left(ErrorMessage(message: error.message));
      },
      (success) {
        try {
          final statusCode =
              (success.data['statusCode'] as int?) ?? success.statusCode;
          final data = success.data;
          if (statusCode <= 201) {
            return Right(EnumModel.fromJson(data));
          } else {
            return Left(
              ErrorMessage(
                message:
                    data['message'] as String? ?? AppText.somethingWentWrong,
              ),
            );
          }
        } catch (e) {
          LogUtility.error('$e');
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse registerDevice({
    required String deviceId,
    required String pushToken,
    required String platform,
  }) async {
    final response = await http.post(
      path: api.registerDevice,
      token: true,
      data: {
        'device_id': deviceId,
        'push_token': pushToken,
        'platform': platform,
      },
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
          if (statusCode != null && statusCode <= 201) {
            return Right(
              SuccessMessage(
                message:
                    data['message'] as String? ??
                    'Device registered successfully',
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

  @override
  AppTypeResponse<PresignModel> uploadFile({
    required String path,
    bool public = true,
    required UploadType type,
  }) async {
    final response = await http.post(
      path: public ? api.publicPresign : api.presign,
      token: !public,
      data: {
        "upload_type": type.name,
        "file_extension": path.split('.').last,
        "max_size_mb": 10,
      },
    );

    return response.fold(
      (error) {
        return Left(ErrorMessage(message: error.message));
      },
      (success) async {
        try {
          final statusCode =
              (success.data['statusCode'] as int?) ?? success.statusCode;
          final data = success.data;
          if (statusCode != null && statusCode <= 201) {
            final model = PresignModel.fromJson(data['data']);
            final r = await upload(path: path, signedUrl: model.uploadUrl);
            r.fold(
              (l) {
                return Left(ErrorMessage(message: l.message));
              },
              (r) {
                return Right(model);
              },
            );
            return Right(model);
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

  AppSuccessResponse upload({
    required String path,
    required String signedUrl,
  }) async {
    final file = File(path);
    LogUtility.info('URL ${signedUrl}');
    final response = await http.put(
      path: signedUrl,
      token: false,
      data: file.openRead(),
      options: Options(
        responseType: ResponseType.plain,
        headers: {
          'Content-Type': 'application/octet-stream',
          'Content-Length': file.lengthSync().toString(),
        },
      ),
    );
    return response.fold(
      (error) {
        return Left(ErrorMessage(message: error.message));
      },
      (success) {
        final statusCode = success.statusCode!;
        if (statusCode <= 201) {
          return const Right(SuccessMessage(message: 'Success'));
        }
        return Left(ErrorMessage(message: AppText.somethingWentWrong));
      },
    );
  }

  @override
  AppSuccessResponse onboardNgo({required Payload payload}) async {
    final response = await http.post(
      path: api.ngoOnboarding,
      data: payload.toMap(),
      token: false,
    );
    return response.fold(
      (error) {
        LogUtility.error('Error: ${error.message}');
        return Left(ErrorMessage(message: error.message));
      },
      (success) async {
        try {
          final data = success.data;
          final statusCode =
              (data is Map)
                  ? data['statusCode'] as int? ?? success.statusCode
                  : success.statusCode;
          if (statusCode <= 201) {
            if (data['data'] is Map && data['data']['accessToken'] != null) {
              var item = SecureStorageItem(
                key: StorageKey.token,
                value: data['data']['accessToken'],
              );
              await storage.write(item);
            }
            return Right(
              SuccessMessage(message: data['message'] as String? ?? ""),
            );
          }

          return Left(
            ErrorMessage(
              message: data['message'] as String? ?? AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }
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

