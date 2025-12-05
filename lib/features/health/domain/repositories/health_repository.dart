import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/data/models/medication_date_model.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/domain/entities/medication_date.dart';
import 'package:dummy/features/health/domain/entities/medication_log.dart';

import '../../../dailycare/domain/entities/frequency.dart';
import '../entities/vaccination.dart';
import '../entities/vaccination_log_view.dart';
import '../entities/clinic.dart';
import '../entities/ai_insight.dart';
// import '../entities/vaccination_log.dart';

abstract class HealthRepository {
  const HealthRepository();
  AppSuccessResponse addMedication({required Payload payload});
  AppTypeResponse<List<Frequency>> medicationFrequencies();
  AppSuccessResponse deleteVaccination({required String id});
  AppSuccessResponse deleteMedication({required String id});
  AppTypeResponse<List<PetMedication>> medications(
    String petId,
    String? key,
    String? fromDate,
    String? toDate,
  );
  AppSuccessResponse editMedication({
    required Payload payload,
    required String id,
  });
  AppSuccessResponse editVaccination({
    required Payload payload,
    required String id,
  });
  AppTypeResponse<PetMedication> getMedication({required String id});
  AppTypeResponse<PetVaccination> getVaccination({required String id});
  AppSuccessResponse updateMedicationDate({
    required String id,
    required MedicationDateModel payload,
  });

  AppTypeResponse<MedicationDate> getMedicationDate({
    required String id,
    required DateTime date,
  });

  // Vaccination logs methods
  AppSuccessResponse addVaccination({required Payload payload});
  AppTypeResponse<List<PetVaccination>> vaccinations(
    String petId,
    String? key,
    String? fromDate,
    String? toDate,
  );
  AppTypeResponse<VaccinationLogView> getVaccinationLog({required String id});
  AppSuccessResponse updateVaccinationLog({
    required String vaccinationId,
    required bool check,
    required String notes,
    required DateTime date,
  });
  // Medication logs methods
  AppTypeResponse<List<MedicationLog>> medicationLogs(
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

  // Clinics
  AppTypeResponse<List<Clinic>> clinics({
    required double latitude,
    required double longitude,
    required String type,
  });

  // AI Insights
  AppTypeResponse<AiInsight> aiInsights({required String petId});
}
