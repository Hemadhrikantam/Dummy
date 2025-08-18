import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/models/documents_model.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';
import 'package:dummy/service/app_http_service.dart';
import '../../../../api/api.dart' as api;

class ProfileDatasourceImpl extends ProfileDatasource {
  ProfileDatasourceImpl({required this.http});
  final AppHttp http;

  @override
  AppTypeResponse<List<DocumentsModel>> documents() async {
    final response = await http.get(path: api.petDairyDocuments);
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
            final item = <DocumentsModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(DocumentsModel.fromMap(map));
            }
            return Right(item);
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
  AppTypeResponse<List<DropItemModel>> eventFields() async {
    final response = await http.get(path: api.petDairyEvent);
    return response.fold(
      (err) {
        return Left(ErrorMessage(message: AppText.somethingWentWrong));
      },
      (success) {
        try {
          final data = success.data;
          final statusCode =
              (data is Map)
                  ? data['statusCode'] as int? ?? success.statusCode
                  : success.statusCode;

          if (statusCode <= 201) {
            final item = <DropItemModel>[];
            for (final dropList in data as List? ?? []) {
              item.add(DropItemModel.fromMap(dropList as JsonMap));
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
  AppSuccessResponse addDocument({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.petDairyDocuments,
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
            return Right(
              SuccessMessage(
                message: data['message'] as String? ?? 'Added successfully',
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
  AppSuccessResponse addMedia({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.petDairyMedia,
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
            return Right(
              SuccessMessage(
                message: data['message'] as String? ?? 'Added successfully',
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
  AppTypeResponse<List<MediaModel>> medias() async {
    final response = await http.get(path: api.petDairyMedia);
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
          if (statusCode <= 200) {
            final item = <MediaModel>[];
            for (final media in data as List? ?? []) {
              item.add(MediaModel.fromMap(media as JsonMap));
            }
            return Right(item);
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
  AppTypeResponse<MediaModel> getMedia({required int id}) async {
    final response = await http.get(path: '${api.petDairyMedia}$id/');
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
          if (statusCode <= 200) {
            return Right(MediaModel.fromMap(data as JsonMap));
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
  AppSuccessResponse editMedia({
    required int id,
    required Payload payload,
  }) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.put(
      path: '${api.petDairyMedia}$id/',
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
            return Right(
              SuccessMessage(
                message: data['message'] as String? ?? 'Added successfully',
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
  AppSuccessResponse updateFavroute({
    required int mediaId,
    required bool isFavroute,
  }) async {
    final formData = FormData.fromMap({"is_favourite": isFavroute});
    final response = await http.put(
      path: '${api.petDairyfavourites}$mediaId/',
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
            return Right(
              SuccessMessage(
                message: data['message'] as String? ?? 'Added successfully',
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
  AppTypeResponse<List<MediaModel>> favoriteMedias() async {
    final response = await http.get(path: api.petDairyfavourites);
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
          if (statusCode <= 200) {
            final item = <MediaModel>[];
            for (final dropList in data as List? ?? []) {
              item.add(MediaModel.fromMap(dropList as JsonMap));
            }
            return Right(item);
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
  AppSuccessResponse deleteMedia({required int id}) async {
    final response = await http.delete(
      path: '${api.petDairyMedia}$id/',
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
            return Right(
              SuccessMessage(
                message: data['message'] as String? ?? 'Added successfully',
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
  AppSuccessResponse editPet({
    required int id,
    required Payload payload,
  }) async {
    final response = await http.put(
      path: api.editPet + '$id/',
      data: payload.toMap(),
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
