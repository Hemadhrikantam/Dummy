import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/data/models/adoption_model.dart';

abstract class PetAdoptionDatasource {
  PetAdoptionDatasource();

  AppSuccessResponse submitPetAdoption({required Payload payload});
  AppTypeResponse<List<AdoptionModel>> adoptions();

}
