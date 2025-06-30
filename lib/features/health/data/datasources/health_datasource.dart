import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

import '../../../dailycare/data/models/frequency_model.dart';
import '../models/medication_model.dart';

abstract class HealthDatasource {
  const HealthDatasource();
  AppSuccessResponse addMedication({required Payload payload});
  AppTypeResponse<List<FrequencyModel>> medicationFrequencies();
  AppTypeResponse<List<PetMedicationModel>> medications(String? key);
}
