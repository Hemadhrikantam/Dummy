import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/datasources/health_datasource.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';
import 'package:dummy/features/health/domain/repositories/health_repository.dart';

import '../../../dailycare/domain/entities/frequency.dart';
import '../../domain/entities/vaccination.dart';

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

  @override
  AppSuccessResponse editMedication({
    required Payload payload,
    required int id,
  }) {
    return _healthDatasource.editMedication(payload: payload, id: id);
  }

  @override
  AppTypeResponse<PetMedication> getMedication({required int id}) {
    return _healthDatasource.getMedication(id: id);
  }

  @override
  AppTypeResponse<List<PetVaccination>> vaccinations(
    String? key,
    String? fromDate,
    String? toDate,
  ) {
    return _healthDatasource.vaccinations(key, fromDate, toDate);
  }

  @override
  AppTypeResponse<MedicationDate> getMedicationDate({
    required int id,
    required DateTime date,
  }) {
    return _healthDatasource.getMedicationDate(id: id, date: date);
  }

  @override
  AppSuccessResponse updateMedicationDate({
    required int id,
    required MedicationDateModel payload,
  }) {
    return _healthDatasource.updateMedicationDate(id: id, payload: payload);
  }

  @override
  AppTypeResponse<PetVaccination> getVaccination({required int id}) {
    return _healthDatasource.getVaccination(id: id);
  }

  @override
  AppSuccessResponse deleteMedication({required int id}) {
    return _healthDatasource.deleteMedication(id: id);
  }

  @override
  AppSuccessResponse deleteVaccination({required int id}) {
    return _healthDatasource.deleteVaccination(id: id);
  }
}
