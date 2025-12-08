import 'package:dartz/dartz.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/data/datasources/ngo_datasource.dart';
import 'package:dummy/features/ngo/data/models/listing_model.dart';
import 'package:dummy/features/ngo/data/models/ngo_profile_model.dart';
import 'package:dummy/service/app_http_service.dart';

class NgoDatasourceImpl extends NgoDatasource {
  NgoDatasourceImpl({required this.http});
  final AppHttp http;

  @override
  AppTypeResponse<NgoProfileModel> getProfile() async {
    final response = await http.get(path: api.ngoProfile);
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
            final map = Map<String, dynamic>.from(data['data'] as Map);
            return Right(NgoProfileModel.fromMap(map));
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
  AppSuccessResponse updateProfile({required Payload payload}) async {
    final response = await http.put(
      path: api.ngoProfile,
      data: payload.toMap(),
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
                message: data['message'] as String? ?? 'Profile updated',
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
  AppSuccessResponse addPetListing({
    required String desc,
    required String petId,
    required String status,
    String? contactEmail,
    String? contactPhone,
    String? contactAddress,
  }) async {
    final body = {
      'description': desc,
      'pet_id': petId,
      'status': status,
      'contact_email': contactEmail,
      'contact_phone': contactPhone,
      'contact_address': contactAddress,
    }..removeWhere((key, value) => value == null);
    final response = await http.post(
      path: api.petListing,
      data: body,
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
                message: data['message'] as String? ?? 'Pet listing added',
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
  AppSuccessResponse updatePetListing({
    required String id,
    required String desc,
    required String petId,
    required String status,
  }) async {
    final response = await http.put(
      path: '${api.petListing}/$id',
      data: {'description': desc, 'pet_id': petId, 'status': status},
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
                message: data['message'] as String? ?? 'Pet listing updated',
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
  AppSuccessResponse markPetListingStatus({
    required String id,
    required bool isActive,
    required String status,
  }) async {
    final response = await http.put(
      path: '${api.petListing}/$id',
      data: {'is_active': isActive, 'status': status},
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
                message: data['message'] as String? ?? 'Listing status updated',
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
  AppTypeResponse<CountListingModel> petListing({bool all = false}) async {
    final response = await http.get(
      path: api.petListing,
      queryParameters: {'view': all ? 'others' : 'me'},
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
            return Right(CountListingModel.fromMap(data));
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
