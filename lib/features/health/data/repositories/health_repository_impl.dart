import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/datasources/health_datasource.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

import '../../../dailycare/domain/entities/frequency.dart';

class HealthRepositoryImpl extends HealthRepository {
  HealthRepositoryImpl(this._healthDatasource);
  final HealthDatasource _healthDatasource;

  @override
  AppSuccessResponse addMedication({required Payload payload}) {
    return _healthDatasource.addMedication(payload: payload);
  }

  @override
  AppTypeResponse<List<Frequency>> medicationFrequencies() {
    return _healthDatasource.medicationFrequencies();
  }

  @override
  AppTypeResponse<List<PetMedication>> medications(
    String? key,
    String? fromDate,
    String? toDate,
  ) {
    return _healthDatasource.medications(key, fromDate, toDate);
  }

  @override
  AppSuccessResponse addVaccination({required Payload payload}) {
    return _healthDatasource.addVaccination(payload: payload);
  }
}
