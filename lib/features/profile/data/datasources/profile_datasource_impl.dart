import 'package:dartz/dartz.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/models/documents_model.dart';
import 'package:dummy/service/app_http_service.dart';
import '../../../../api/api.dart' as api;

class ProfileDatasourceImpl extends ProfileDatasource {
  ProfileDatasourceImpl({required this.http});
    final AppHttp http;

  @override
  AppTypeResponse<List<DocumentsModel>> documents() async{
  final response = await http.get(path: api.petDairyDocuments, token: false);
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
}