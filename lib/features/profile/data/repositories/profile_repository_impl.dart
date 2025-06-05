import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/data/datasources/profile_datasource.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:dummy/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this.datasource);
final ProfileDatasource datasource;
  @override
  AppTypeResponse<List<Documents>> documents() {
    return datasource.documents();
  }
}