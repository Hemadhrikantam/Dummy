import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/datasources/health_datasource.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/service/local_storage_service.dart';

import '../../../dailycare/data/models/frequency_model.dart';
import '../models/medication_model.dart';
import '../models/medication_log_model.dart';
import '../models/vaccination_model.dart';

class HealthDatasourceImpl extends HealthDatasource {
  const HealthDatasourceImpl({required this.http, required this.storage});
  final AppHttp http;
  final LocalStorage storage;

  @override
  AppSuccessResponse addMedication({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    // final formData = FormData.fromMap(payload.toMap());
    final response = await http.post(
      path: api.medication(null, null, null),
      data: payload.toMap(),
      // options: Options(contentType: 'multipart/form-data'),
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
                    data['message'] as String? ??
                    'Medication added successfully',
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
  AppTypeResponse<List<PetMedicationModel>> medications(
    String petId,
    String? key,
    String? fromDate,
    String? toDate,
  ) async {
    final response = await http.get(
      path: api.medication(null, null, null),
      queryParameters: {'pet_id': petId, if (key != null) 'key': key},
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
            final item = <PetMedicationModel>[];
            for (final documents in data['data'] as List? ?? []) {
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
    required String id,
  }) async {
    LogUtility.warning(payload.toMap().toString());
    final formData = FormData.fromMap(payload.toMap());
    final response = await http.put(
      path: api.medicationItem(id),
      data: payload.toMap(),
      // options: Options(contentType: 'multipart/form-data'),
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
  AppTypeResponse<PetMedicationModel> getMedication({
    required String id,
  }) async {
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
            final map = Map<String, dynamic>.from(data['data'] as Map);
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

  @override
  AppTypeResponse<MedicationDateModel> getMedicationDate({
    required String id,
    required DateTime date,
  }) async {
    final response = await http.get(
      path: api.medicationServing(id, AppUtil.formatDate(date)),
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
            final item = MedicationDateModel.fromJson(data);
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
  AppSuccessResponse updateMedicationDate({
    required String id,
    required MedicationDateModel payload,
  }) async {
    LogUtility.warning(payload.toJson().toString());
    final formData = FormData.fromMap(payload.toJson());
    final response = await http.put(
      path: api.medicationServing(id, AppUtil.formatDate(payload.date)),
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
                    data['message'] as String? ??
                    'Vaccination added successfully',
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
  AppSuccessResponse deleteMedication({required String id}) async {
    final response = await http.delete(
      path: '${api.medication(null, null, null)}$id/',
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
              SuccessMessage(message: 'Vaccination deleted successfully'),
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
  AppSuccessResponse deleteVaccination({required String id}) async {
    final response = await http.delete(
      path: '${api.vaccination(null, null, null)}/$id/',
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
              SuccessMessage(message: 'Medication deleted successfully'),
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
  AppSuccessResponse editVaccination({
    required Payload payload,
    required String id,
  }) async {
    LogUtility.warning(payload.toMap().toString());
    final response = await http.put(
      path: api.vaccination(null, null, null) + '/$id/',
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
  AppSuccessResponse addVaccination({required Payload payload}) async {
    LogUtility.warning(payload.toMap().toString());
    final response = await http.post(
      path: api.vaccination(null, null, null),
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
  AppTypeResponse<PetVaccinationModel> getVaccination({
    required String id,
  }) async {
    final response = await http.get(
      path: '${api.vaccination(null, null, null)}/$id/',
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
            final item = PetVaccinationModel.fromJson(data['data']);
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
  AppTypeResponse<List<PetVaccinationModel>> vaccinations(
    String petId,
    String? key,
    String? fromDate,
    String? toDate,
  ) async {
    final response = await http.get(
      path: api.vaccination(null, null, null),
      queryParameters: {
        'pet_id': petId,
        if (key?.isNotEmpty ?? false) 'search': key,
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
            final item = <PetVaccinationModel>[];
            for (final documents in data['data'] as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(PetVaccinationModel.fromJson(map));
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
  AppTypeResponse<List<MedicationLogModel>> medicationLogs(
    String medicationId,
    String? fromDate,
    String? toDate,
  ) async {
    final response = await http.get(path: api.medicationLogs(medicationId));
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
            final item = <MedicationLogModel>[];
            for (final logData in data['data'] as List? ?? []) {
              final map = Map<String, dynamic>.from(logData as Map);
              item.add(MedicationLogModel.fromJson(map));
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
  AppSuccessResponse updateMedicationLog({
    required String medicationId,
    required String logId,
    required bool check,
    required DateTime date,
  }) async {
    final response = await http.post(
      path: api.medicationLogs(null),
      data: {
        "medication_id": medicationId,
        "schedule_ids": [logId],
        "notes": "test",
        "type": check ? "check" : "uncheck",
        "scheduled_date": AppUtil.formatDate(date),
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
            return Right(
              SuccessMessage(
                message: data['message'] as String? ?? 'Medication log updated',
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
}
