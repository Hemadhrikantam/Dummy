import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dailycare/data/datasources/daily_care_datasource.dart';
import 'package:dummy/features/dailycare/data/models/frequency_model.dart';
import 'package:dummy/features/dailycare/data/models/overview_model.dart';
import 'package:dummy/features/dailycare/data/models/remind_before_model.dart';
import 'package:dummy/features/dailycare/data/models/timezone_model.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/service/local_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/type_def.dart';
import '../models/deworming_model.dart';
import '../models/expense_model.dart';
import '../models/grooming_model.dart';
import '../models/meal_model.dart';
import '../models/walk_model.dart';

class DailyCareDatasourceImpl extends DailyCareDatasource {
  const DailyCareDatasourceImpl({required this.http, required this.storage});
  final AppHttp http;
  final LocalStorage storage;

  @override
  AppSuccessResponse addMeal({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    final response = await http.post(
      path: api.meals(),
      data: payload.toMap(),
      options: Options(contentType: 'application/json'),
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
                    (data is Map && data['message'] is String)
                        ? data['message'] as String
                        : 'Meal added successfully',
              ),
            );
          }

          return Left(
            ErrorMessage(
              message:
                  (data is Map && data['message'] is String)
                      ? data['message'] as String
                      : AppText.somethingWentWrong,
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
    final response = await http.post(path: api.walks(), data: payload.toMap());
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
      path: api.groomings(null),
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
      path: api.dewormings(null),
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
    final response = await http.post(
      path: api.expenses(),
      data: payload.toMap(),
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
  AppTypeResponse<List<FrequencyModel>> frequencies() async {
    final response = await http.get(path: api.frequencies);
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
            final item = <FrequencyModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(FrequencyModel.fromJson(map));
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
  AppTypeResponse<List<TimezoneModel>> timezones() async {
    final response = await http.get(path: api.timezones);
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
            final item = <TimezoneModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(TimezoneModel.fromJson(map));
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
  AppTypeResponse<List<RemindBeforeModel>> remindBefores() async {
    final response = await http.get(path: api.remindBefores);
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
            final item = <RemindBeforeModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(RemindBeforeModel.fromJson(map));
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
  AppTypeResponse<List<PetMealModel>> meals(DateTime? date) async {
    final response = await http.get(
      path: api.meals(),
      queryParameters: {
        'pet_id': currentContext.read<DashboardBloc>().state.selectedPet?.id,
        'start_date': date != null ? AppUtil.formatDate(date) : null,
        'end_date': date != null ? AppUtil.formatDate(date) : null,
      },
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
            final item = <PetMealModel>[];
            for (final documents in data['data'] as List? ?? []) {
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
    final response = await http.get(
      path: api.walks(),
      queryParameters: {
        'pet_id': currentContext.read<DashboardBloc>().state.selectedPet?.id,
        'start_date': date != null ? AppUtil.formatDate(date) : null,
        'end_date': date != null ? AppUtil.formatDate(date) : null,
      },
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
            final item = <PetWalkModel>[];
            for (final documents in data['data'] as List? ?? []) {
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

  @override
  AppTypeResponse<List<PetGroomingModel>> groomings(DateTime? date) async {
    final response = await http.get(path: api.groomings(date), petId: true);
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
            final item = <PetGroomingModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetGroomingModel.fromJson(map));
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
  AppTypeResponse<List<PetExpenseModel>> expenses(DateTime? date) async {
    final response = await http.get(
      path: api.expenses(),
      queryParameters: {
        'pet_id': currentContext.read<DashboardBloc>().state.selectedPet?.id,
        'start_date': date != null ? AppUtil.formatDate(date) : null,
        'end_date': date != null ? AppUtil.formatDate(date) : null,
      },
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
            final item = <PetExpenseModel>[];
            for (final documents in data['data'] as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetExpenseModel.fromJson(map));
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
  AppTypeResponse<List<PetDewormingModel>> dewormings(DateTime? date) async {
    final response = await http.get(path: api.dewormings(date), petId: true);
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
            final item = <PetDewormingModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetDewormingModel.fromJson(map));
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
  AppTypeResponse<OverviewModel> overview(String petId) async {
    final response = await http.get(path: api.overview(petId), petId: true);
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
            final model = OverviewModel.fromJson(data['data']);
            return Right(model);
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
  AppTypeResponse<PetMealModel> mealItem(String id) async {
    final response = await http.get(path: api.mealItem(id), petId: true);
    return response.fold(
      (error) => Left(ErrorMessage(message: error.message)),
      (success) async {
        try {
          final data = success.data;
          final statusCode =
              (data is Map)
                  ? data['statusCode'] as int? ?? success.statusCode
                  : success.statusCode;
          if (statusCode <= 201) {
            final map =
                (data is Map && data['data'] is Map)
                    ? Map<String, dynamic>.from(data['data'] as Map)
                    : Map<String, dynamic>.from(data as Map);
            return Right(PetMealModel.fromJson(map));
          }
          return Left(
            ErrorMessage(
              message:
                  (data is Map && data['message'] is String)
                      ? data['message'] as String
                      : AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse updateMeal({
    required String id,
    required Payload payload,
  }) async {
    final response = await http.put(
      path: api.mealItem(id),
      data: payload.toMap(),
      options: Options(contentType: 'application/json'),
    );
    return response.fold(
      (error) => Left(ErrorMessage(message: error.message)),
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
                    (data is Map && data['message'] is String)
                        ? data['message'] as String
                        : 'Meal updated successfully',
              ),
            );
          }
          return Left(
            ErrorMessage(
              message:
                  (data is Map && data['message'] is String)
                      ? data['message'] as String
                      : AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse deleteMeal(String id) async {
    final response = await http.delete(path: api.mealItem(id));
    return response.fold(
      (error) => Left(ErrorMessage(message: error.message)),
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
                    (data is Map && data['message'] is String)
                        ? data['message'] as String
                        : 'Meal deleted successfully',
              ),
            );
          }
          return Left(
            ErrorMessage(
              message:
                  (data is Map && data['message'] is String)
                      ? data['message'] as String
                      : AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }
}
