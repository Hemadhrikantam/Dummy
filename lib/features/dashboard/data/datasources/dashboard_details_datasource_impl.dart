import 'package:dartz/dartz.dart';
import 'package:dummy/api/api.dart' as api;
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/data/datasources/dashboard_details_datasource.dart';
import 'package:dummy/features/dashboard/data/models/dashboard_details_model.dart';
import 'package:dummy/features/dashboard/data/models/notification_model.dart';
import 'package:dummy/service/app_http_service.dart';

class DashboardDetailsDatasourceImpl extends DashboardDetailsDatasource {
  DashboardDetailsDatasourceImpl({required this.http});
  final AppHttp http;

  @override
  AppTypeResponse<List<DashboardDetailsModel>> dashboardPetDetails() async {
    final response = await http.get(path: api.pets);
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
            final item = <DashboardDetailsModel>[];
            for (final documents in data['data'] as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(DashboardDetailsModel.fromMap(map));
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
  AppTypeResponse<List<NotificationModel>> notifications() async {
    final response = await http.get(path: api.notifications);
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
            final item = <NotificationModel>[];
            for (final documents in data['data'] as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(NotificationModel.fromMap(map));
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
