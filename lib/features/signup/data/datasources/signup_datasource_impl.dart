import 'package:dartz/dartz.dart';

import '../../../../api/api.dart' as api;
import '../../../../core/constent/app_text.dart';
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
    final response = await http.get(path: api.catBreeds, token: false);
    return response.fold(
      (error) {
        print(error);
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
              map['name'] = map['breed'];
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
    final response = await http.get(path: api.dogBreeds, token: false);
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
              map['name'] = map['breed'];
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
    final response = await http.get(path: api.personalityTags, token: false);
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
              map['name'] = map['personality_tag'];
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
}
