import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/datasources/health_datasource.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/service/local_storage_service.dart';

import '../../../dailycare/data/models/frequency_model.dart';
import '../models/medication_model.dart';

class HealthDatasourceImpl extends HealthDatasource {
  const HealthDatasourceImpl({required this.http, required this.storage});
  final AppHttp http;
  final LocalStorage storage;
  @override
  AppSuccessResponse addMedication({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.medication(null),
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
  AppTypeResponse<List<FrequencyModel>> medicationFrequencies() async {
    final response = await http.get(path: api.medicationFrequencies);
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
  AppTypeResponse<List<PetMedicationModel>> medications(String? key) async {
    final response = await http.get(path: api.medication(key));
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
            final item = <PetMedicationModel>[];
            for (final documents in data as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetMedicationModel.fromJson(map));
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
  AppSuccessResponse editMedication({
    required Payload payload,
    required int id,
  }) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.put(
      path: api.medicationItem(id),
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
  AppTypeResponse<PetMedicationModel> getMedication({required int id}) async {
    final response = await http.get(path: api.medicationItem(id));
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
            final map = Map<String, dynamic>.from(data as Map);
            return Right(PetMedicationModel.fromJson(map));
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
