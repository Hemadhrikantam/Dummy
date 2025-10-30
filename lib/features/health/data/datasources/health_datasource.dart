import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';

import '../../../dailycare/data/models/frequency_model.dart';
import '../models/medication_model.dart';
import '../models/medication_log_model.dart';
import '../models/vaccination_model.dart';

abstract class HealthDatasource {
  const HealthDatasource();
  AppSuccessResponse addMedication({required Payload payload});
  AppSuccessResponse editMedication({
    required Payload payload,
    required String id,
  });
  AppSuccessResponse editVaccination({
    required Payload payload,
    required String id,
  });
  AppTypeResponse<PetMedicationModel> getMedication({required String id});
  AppTypeResponse<PetVaccinationModel> getVaccination({required String id});
  AppSuccessResponse deleteVaccination({required String id});
  AppSuccessResponse deleteMedication({required String id});
  AppTypeResponse<MedicationDateModel> getMedicationDate({
    required String id,
    required DateTime date,
  });
  AppSuccessResponse updateMedicationDate({
    required String id,
    required MedicationDateModel payload,
  });
  AppTypeResponse<List<FrequencyModel>> medicationFrequencies();
  AppTypeResponse<List<PetMedicationModel>> medications(
    String petId,
    String? key,
    String? fromDate,
    String? toDate,
  );
  // Vaccination logs methods
  AppSuccessResponse addVaccination({required Payload payload});
  AppTypeResponse<List<PetVaccinationModel>> vaccinations(
    String petId,
    String? key,
    String? fromDate,
    String? toDate,
  );
  // Medication logs methods
  AppTypeResponse<List<MedicationLogModel>> medicationLogs(
    String medicationId,
    String? fromDate,
    String? toDate,
  );
  AppSuccessResponse updateMedicationLog({
    required String medicationId,
    required String logId,
    required bool check,
    required DateTime date,
  });
}
