import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';

import '../../../dailycare/domain/entities/frequency.dart';

abstract class HealthRepository {
  const HealthRepository();
  AppSuccessResponse addMedication({required Payload payload});
  AppTypeResponse<List<Frequency>> medicationFrequencies();
  AppTypeResponse<List<PetMedication>> medications(
    String? key,
    String? fromDate,
    String? toDate,
  );
  AppSuccessResponse editMedication({
    required Payload payload,
    required int id,
  });
  AppTypeResponse<PetMedication> getMedication({required int id});
  AppSuccessResponse addVaccination({required Payload payload});
}
