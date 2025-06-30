import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/datasources/health_datasource.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

class HealthRepositoryImpl extends HealthRepository {
  HealthRepositoryImpl(this._healthDatasource);
  final HealthDatasource _healthDatasource;

  @override
  AppSuccessResponse addMedication({required Payload payload}) {
    return _healthDatasource.addMedication(payload: payload);
  }
}