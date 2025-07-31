import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/data/models/adoption_model.dart';
import 'pet_adoption_datasource.dart';
import 'package:dummy/service/app_http_service.dart';

class PetAdoptionDatasourceImpl extends PetAdoptionDatasource {
  PetAdoptionDatasourceImpl({required this.http});

  final AppHttp http;

  @override
  AppSuccessResponse submitPetAdoption({required Payload payload}) async {
    LogUtility.warning('Payload: ${payload.toMap()}');

    final formData = FormData.fromMap(payload.toMap());

    final response = await http.post(
      path: api.adoptPet,
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
                    data['message'] as String? ?? 'Pet submitted successfully',
              ),
            );
          }

          return Left(
            ErrorMessage(
              message: data['message'] as String? ?? 'Something went wrong',
            ),
          );
        } catch (_) {
          return Left(ErrorMessage(message: 'Something went wrong'));
        }
      },
    );
  }

  @override
  AppSuccessResponse editPetAdoption({
    required Payload payload,
    required int id,
  }) async {
    LogUtility.warning('Payload: ${payload.toMap()}');

    final formData = FormData.fromMap(payload.toMap());

    final response = await http.put(
      path: '${api.adoptPet}$id',
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
                    data['message'] as String? ?? 'Pet submitted successfully',
              ),
            );
          }

          return Left(
            ErrorMessage(
              message: data['message'] as String? ?? 'Something went wrong',
            ),
          );
        } catch (_) {
          return Left(ErrorMessage(message: 'Something went wrong'));
        }
      },
    );
  }

  @override
  AppTypeResponse<List<AdoptionModel>> adoptions() async {
    final response = await http.get(path: api.adoptPet);
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
            final item = <AdoptionModel>[];
            for (final adoptions in data as List? ?? []) {
              item.add(AdoptionModel.fromMap(adoptions as JsonMap));
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
  AppTypeResponse<AdoptionModel> adoption({required int id}) async {
    final response = await http.get(path: '${api.adoptPet}$id');
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
            return Right(AdoptionModel.fromMap(data as JsonMap));
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
AppTypeResponse<List<DropItemModel>> petTypes() async {
  final response = await http.get(path: api.petTypes);

  return response.fold(
    (error) {
      return Left(ErrorMessage(message: error.message));
    },
    (success) async {
      try {
        final data = success.data;
        final statusCode = (data is Map && data['statusCode'] != null)
            ? data['statusCode'] as int
            : success.statusCode;

        if (statusCode >= 200 && statusCode < 300) {
          final List<DropItemModel> items = [];

          if (data is List) {
            for (final item in data) {
              items.add(DropItemModel.fromMap(item));
            }
          }
          return Right(items);
        }

        return Left(ErrorMessage(
          message: (data is Map && data['message'] != null)
              ? data['message'] as String
              : AppText.somethingWentWrong,
        ));
      } catch (_) {
        return Left(ErrorMessage(message: AppText.somethingWentWrong));
      }
    },
  );
}

  @override
  AppTypeResponse<List<AdoptionModel>> allPets() async {
    final response = await http.get(path: api.allPets);
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
            final item = <AdoptionModel>[];
            for (final adoptions in data as List? ?? []) {
              item.add(AdoptionModel.fromMap(adoptions as JsonMap));
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