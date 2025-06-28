import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/dailycare/data/datasources/daily_care_datasource.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/service/local_storage_service.dart';
import '../../../../core/utils/type_def.dart';
import '../models/meal_model.dart';
import '../models/walk_model.dart';

class DailyCareDatasourceImpl extends DailyCareDatasource {
  const DailyCareDatasourceImpl({required this.http, required this.storage});
  final AppHttp http;
  final LocalStorage storage;

  @override
  AppSuccessResponse addMeal({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.addMeal,
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
                message:
                    data['message'] as String? ?? 'Meal added successfully',
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
  AppSuccessResponse addWalk({required Payload payload}) async {
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.addWalk,
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
                message:
                    data['message'] as String? ?? 'Meal added successfully',
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
  AppSuccessResponse addGrooming({required Payload payload}) async {
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.addGrooming,
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
                message:
                    data['message'] as String? ?? 'Meal added successfully',
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
  AppSuccessResponse addDeworming({required Payload payload}) async {
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.addDeworming,
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
                message:
                    data['message'] as String? ?? 'Meal added successfully',
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
  AppSuccessResponse addExpense({required Payload payload}) async {
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.addExpense,
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
                message:
                    data['message'] as String? ?? 'Meal added successfully',
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
  AppTypeResponse<List<PetMealModel>> meals(DateTime? date) async {
    final response = await http.get(path: api.meals(date));
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
            final item = <PetMealModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetMealModel.fromJson(map));
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
  AppTypeResponse<List<PetWalkModel>> walks(DateTime? date) async {
    final response = await http.get(path: api.walks(date));
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
            final item = <PetWalkModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetWalkModel.fromJson(map));
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
}
