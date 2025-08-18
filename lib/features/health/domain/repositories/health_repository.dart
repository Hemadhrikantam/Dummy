import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';

import '../../../dailycare/domain/entities/frequency.dart';
import '../entities/vaccination.dart';

abstract class HealthRepository {
  const HealthRepository();
  AppSuccessResponse addMedication({required Payload payload});
  AppTypeResponse<List<Frequency>> medicationFrequencies();
  AppSuccessResponse deleteVaccination({required int id});
  AppSuccessResponse deleteMedication({required int id});
  AppTypeResponse<List<PetMedication>> medications(
    String? key,
    String? fromDate,
    String? toDate,
  );
  AppSuccessResponse editMedication({
    required Payload payload,
    required int id,
  });
  AppSuccessResponse editVaccination({
    required Payload payload,
    required int id,
  });
  AppTypeResponse<PetMedication> getMedication({required int id});
  AppTypeResponse<PetVaccination> getVaccination({required int id});
  AppSuccessResponse updateMedicationDate({
    required int id,
    required MedicationDateModel payload,
  });
  AppSuccessResponse addVaccination({required Payload payload});
  AppTypeResponse<List<PetVaccination>> vaccinations(
    String? key,
    String? fromDate,
    String? toDate,
  );
  AppTypeResponse<MedicationDate> getMedicationDate({
    required int id,
    required DateTime date,
  });
}
