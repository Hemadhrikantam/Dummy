import 'package:dartz/dartz.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/features/wag/data/models/ai_chat_history_model.dart';
import 'package:dummy/features/wag/domain/entities/ai_chat_history.dart';
import 'package:dummy/features/wag/data/models/ai_usage_model.dart';
import 'package:dummy/features/wag/domain/entities/ai_usage.dart';
import '../../../../api/api.dart' as api;
import '../../../../core/error/app_error.dart';
import '../../../../core/utils/type_def.dart';
import '../../../../service/local_storage_service.dart';
import 'wag_datasource.dart';

class WagDatasourceImpl extends WagDatasource {
  WagDatasourceImpl({required this.http, required this.localStorage});

  final AppHttp http;
  final LocalStorage localStorage;

  @override
  AppTypeResponse<Stream<String>> aiStream() async {
    return http.stream(path: api.aiStream);
  }

  @override
  AppSuccessResponse sendChat({
    required String message,
    List<String> images = const [],
  }) async {
    final body = {'message': message, 'images': images};
    final response = await http.post(path: api.aiChat, data: body, token: true);
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
            return Right(SuccessMessage(message: data['message']));
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
  AppTypeResponse<AiChatHistory> aiChatHistory({
    required int limit,
    required int page,
  }) async {
    final response = await http.get(
      path: api.aiChatHistory,
      token: true,
      queryParameters: {'limit': limit, 'page': page},
    );
    return response.fold(
      (error) {
        LogUtility.info('error ----> $error');
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
            final item = AiChatHistoryModel.fromJson(data);
            return Right(item);
          }

          return Left(
            ErrorMessage(
              message:
                  (data is Map && data['message'] != null)
                      ? data['message'] as String
                      : AppText.somethingWentWrong,
            ),
          );
        } catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppTypeResponse<AiUsage> aiUsage() async {
    final response = await http.get(path: api.aiUsage, token: true);
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
            final item = AiUsageModel.fromJson(data);
            return Right(item);
          }

          return Left(
            ErrorMessage(
              message:
                  (data is Map && data['message'] != null)
                      ? data['message'] as String
                      : AppText.somethingWentWrong,
            ),
          );
        } catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }
}
