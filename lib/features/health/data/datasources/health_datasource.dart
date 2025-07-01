import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

import '../../../dailycare/data/models/frequency_model.dart';
import '../models/medication_model.dart';

abstract class HealthDatasource {
  const HealthDatasource();
  AppSuccessResponse addMedication({required Payload payload});
  AppSuccessResponse editMedication({required Payload payload,required int id});
   AppTypeResponse<PetMedicationModel> getMedication({required int id});
  AppTypeResponse<List<FrequencyModel>> medicationFrequencies();
  AppTypeResponse<List<PetMedicationModel>> medications(String? key);
}
