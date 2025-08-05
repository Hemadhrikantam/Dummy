import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';

import '../../../dailycare/data/models/frequency_model.dart';
import '../models/medication_model.dart';
import '../models/vaccination_model.dart';

abstract class HealthDatasource {
  const HealthDatasource();
  AppSuccessResponse addMedication({required Payload payload});
  AppSuccessResponse editMedication({
    required Payload payload,
    required int id,
  });
  AppTypeResponse<PetMedicationModel> getMedication({required int id});
  AppTypeResponse<PetVaccinationModel> getVaccination({required int id});
  AppSuccessResponse deleteVaccination({required int id});
  AppSuccessResponse deleteMedication({required int id});
  AppTypeResponse<MedicationDateModel> getMedicationDate({
    required int id,
    required DateTime date,
  });
  AppSuccessResponse updateMedicationDate({
    required int id,
    required MedicationDateModel payload,
  });
  AppTypeResponse<List<FrequencyModel>> medicationFrequencies();
  AppTypeResponse<List<PetMedicationModel>> medications(
    String? key,
    String? fromDate,
    String? toDate,
  );
  AppSuccessResponse addVaccination({required Payload payload});
  AppTypeResponse<List<PetVaccinationModel>> vaccinations(
    String? key,
    String? fromDate,
    String? toDate,
  );
}
