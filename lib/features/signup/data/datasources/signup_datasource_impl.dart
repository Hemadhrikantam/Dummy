import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/api/storage_key.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/features/signup/data/models/pet_image_model.dart';

import '../../../../api/api.dart' as api;
import '../../../../core/constant/app_text.dart';
import '../../../../core/error/app_error.dart';
import '../../../../core/models/drop_item.dart';
import '../../../../core/utils/log_utility.dart';
import '../../../../core/utils/type_def.dart';
import '../../../../service/app_http_service.dart';
import '../../../../service/local_storage_service.dart';
import 'signup_datasource.dart';

class SignupDatasourceImpl extends SignupDatasource {
  SignupDatasourceImpl({required this.http, required this.storage});
  final AppHttp http;
  final LocalStorage storage;

  @override
  AppTypeResponse<List<DropItemModel>> catBreeds() async {
    final response = await http.get(path: api.catbreeds, token: false);
    return response.fold(
      (error) {
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
            final item = <DropItemModel>[];
            for (final dropList in data as List? ?? []) {
              final map = Map<String, dynamic>.from(dropList as Map);
              map['title'] = map['breed'];
              item.add(DropItemModel.fromMap(map));
            }
            return Right(item);
          }
          return Left(
            ErrorMessage(
              message: data['message'] as String? ?? AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (err) {
          LogUtility.error('err $err');
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppTypeResponse<List<DropItemModel>> dogBreeds() async {
    final response = await http.get(path: api.dogbreeds, token: false);
    return response.fold(
      (error) {
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
            final item = <DropItemModel>[];
            for (final dropList in data as List? ?? []) {
              final map = Map<String, dynamic>.from(dropList as Map);
              map['title'] = map['breed'];
              item.add(DropItemModel.fromMap(map));
            }
            return Right(item);
          }

          return Left(
            ErrorMessage(
              message: data['message'] as String? ?? AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (err) {
          LogUtility.error('err $err');
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppTypeResponse<List<DropItemModel>> personalityTags() async {
    final response = await http.get(path: api.personalitytags, token: false);
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
            final item = <DropItemModel>[];
            for (final dropList in data as List? ?? []) {
              final map = Map<String, dynamic>.from(dropList as Map);
              map['title'] = map['personality_tag'];
              item.add(DropItemModel.fromMap(map));
            }
            return Right(item);
          }

          return Left(
            ErrorMessage(
              message: data['message'] as String? ?? AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (err) {
          LogUtility.error('err $err');
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse createPet({required Payload payload}) async {
    final response = await http.post(
      path: api.petcreate,
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
            if (data['data']['accessToken'] != null) {
              var item = SecureStorageItem(
                key: StorageKey.token,
                value: data['data']['accessToken'],
              );
              await storage.write(item);
            }
            return Right(
              SuccessMessage(
                message: data['data']['id'].toString() as String? ?? "",
              ),
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

  @override
  AppTypeResponse<PetImageModel> petImage({required String path}) async {
    final formData = FormData.fromMap({
      'pet_image': await MultipartFile.fromFile(
        path,
        filename: path.split('/').last,
      ),
    });

    final response = await http.post(
      path: api.petImage,
      data: formData,
      options: Options(contentType: 'multipart/form-data'),
    );
    return response.fold(
      (error) {
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
            return Right(PetImageModel.fromJson(data));
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
