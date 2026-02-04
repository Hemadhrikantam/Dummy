import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/error/app_error.dart';
import 'package:dummy/core/error/app_success.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/data/models/account_detail_model.dart';
import 'package:dummy/features/profile/data/models/documents_model.dart';
import 'package:dummy/features/profile/data/models/media_model.dart';
import 'package:dummy/features/profile/data/models/timeline_model.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../api/api.dart' as api;

class ProfileDatasourceImpl extends ProfileDatasource {
  ProfileDatasourceImpl({required this.http});
  final AppHttp http;

  @override
  AppTypeResponse<List<DocumentsModel>> documents() async {
    final response = await http.get(
      path:
          api.petDairyDocuments +
          (currentContext.read<DashboardBloc>().state.selectedPet?.id ?? ''),
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
            final item = <DocumentsModel>[];
            for (final documents in data['data'] as List? ?? []) {
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

  @override
  AppTypeResponse<List<DropItemModel>> eventFields() async {
    final response = await http.get(path: api.petDairyEvent);
    return response.fold(
      (err) {
        return Left(ErrorMessage(message: AppText.somethingWentWrong));
      },
      (success) {
        try {
          final data = success.data;
          final statusCode =
              (data is Map)
                  ? data['statusCode'] as int? ?? success.statusCode
                  : success.statusCode;

          if (statusCode <= 201) {
            final item = <DropItemModel>[];
            for (final dropList in data as List? ?? []) {
              item.add(DropItemModel.fromMap(dropList as JsonMap));
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
  AppSuccessResponse addDocument({required Payload payload}) async {
    final response = await http.post(
      path: api.petDairyDocuments,
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
                message: data['message'] as String? ?? 'Added successfully',
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
  AppSuccessResponse deleteDocument({required String id}) async {
    final response = await http.delete(
      path: '${api.petDairyDocuments}$id/',
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
                message: data['message'] as String? ?? 'Deleted successfully',
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
  AppSuccessResponse addMedia({required Payload payload}) async {
    final response = await http.post(
      path: api.petDairyMedia,
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
            final message = data['message'] as String? ?? 'Added successfully';
            final id = data['data']?['id'];
            return Right(
              SuccessMessage(message: id != null ? '$message - $id' : message),
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
  AppTypeResponse<List<MediaModel>> medias() async {
    final response = await http.get(
      path:
          '${api.petDairyMedia}/${currentContext.read<DashboardBloc>().state.selectedPet?.id ?? ''}',
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
          if (statusCode <= 200) {
            final item = <MediaModel>[];
            for (final media in data['data'] as List? ?? []) {
              item.add(MediaModel.fromMap(media as JsonMap));
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
  AppTypeResponse<MediaModel> getMedia({required String id}) async {
    final response = await http.get(path: '${api.petDairyMedia}/$id/');
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
            return Right(MediaModel.fromMap(data as JsonMap));
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
  AppTypeResponse<AccountDetailModel> accountMe() async {
    final response = await http.get(path: api.accountMe);
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
            final map =
                (data is Map && data['data'] is Map)
                    ? Map<String, dynamic>.from(data['data'] as Map)
                    : Map<String, dynamic>.from(data as Map);
            return Right(AccountDetailModel.fromMap(map));
          }
          return Left(
            ErrorMessage(
              message:
                  (data is Map ? data['message'] as String? : null) ??
                  AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse addAccountUser({
    required String mobileNumber,
    required String name,
    required String role,
  }) async {
    final response = await http.post(
      path: api.accountUsers,
      data: {'mobile_number': mobileNumber, 'name': name, 'role': role},
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
                    (data is Map ? data['message'] as String? : null) ??
                    'Added successfully',
              ),
            );
          }
          return Left(
            ErrorMessage(
              message:
                  (data is Map ? data['message'] as String? : null) ??
                  AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse editAccount({required Payload payload}) async {
    final response = await http.put(path: api.account, data: payload.toMap());
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
                    (data is Map ? data['message'] as String? : null) ??
                    'Updated successfully',
              ),
            );
          }
          return Left(
            ErrorMessage(
              message:
                  (data is Map ? data['message'] as String? : null) ??
                  AppText.somethingWentWrong,
            ),
          );
        } on Exception catch (_) {
          return Left(ErrorMessage(message: AppText.somethingWentWrong));
        }
      },
    );
  }

  @override
  AppSuccessResponse editMedia({
    required String id,
    required Payload payload,
  }) async {
    LogUtility.warning(payload.toMap().toString());
    final response = await http.put(
      path: '${api.petDairyMedia}/$id/',
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
                message: data['message'] as String? ?? 'Added successfully',
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
  AppSuccessResponse updateFavroute({
    required String mediaId,
    required bool isFavroute,
  }) async {
    final formData = FormData.fromMap({"is_favourite": isFavroute});
    final response = await http.put(
      path: '${api.petDairyMedia}/$mediaId/favorite',
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
                message: data['message'] as String? ?? 'Added successfully',
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
  AppTypeResponse<List<MediaModel>> favoriteMedias() async {
    final response = await http.get(path: api.petDairyfavourites);
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
            final item = <MediaModel>[];
            for (final dropList in data['data'] as List? ?? []) {
              item.add(MediaModel.fromMap(dropList as JsonMap));
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
  AppSuccessResponse deleteMedia({required String id}) async {
    final response = await http.delete(
      path: '${api.petDairyMedia}/$id/',
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
                message: data['message'] as String? ?? 'Deleted successfully',
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
  AppSuccessResponse editPet({
    required Payload payload,
    bool edit = true,
  }) async {
    final response =
        edit
            ? await http.put(path: api.editPet, data: payload.toMap())
            : await http.post(path: api.editPet, data: payload.toMap());
    return response.fold(
      (error) {
        LogUtility.error('Error: ${error.message}');
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
            if (edit) {
              return Right(
                SuccessMessage(message: data['message'] as String? ?? ""),
              );
            } else {
              return Right(
                SuccessMessage(message: data['message'] as String? ?? ""),
              );
            }
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
  AppTypeResponse<List<TimelineModel>> timelines() async {
    final response = await http.get(
      path: api.petTimeline,
      queryParameters: {
        'pet_id': currentContext.read<DashboardBloc>().state.selectedPet?.id,
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
          if (statusCode <= 200) {
            final item = <TimelineModel>[];
            for (final dropList in data['data'] as List? ?? []) {
              item.add(TimelineModel.fromMap(dropList as JsonMap));
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
  AppTypeResponse<List<TimelineModel>> memories() async {
    final response = await http.get(
      path: api.memories,
      queryParameters: {
        'pet_id': currentContext.read<DashboardBloc>().state.selectedPet?.id,
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
            final item = <TimelineModel>[];
            for (final documents in data['data'] as List? ?? []) {
              final map = Map<String, dynamic>.from(documents as Map);
              item.add(TimelineModel.fromMap(map));
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
  AppSuccessResponse addMemory({required Payload payload}) async {
    final response = await http.post(path: api.memories, data: payload.toMap());
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
                message: data['message'] as String? ?? 'Added successfully',
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
