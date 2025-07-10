import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

abstract class PetAdoptionRepository {
  PetAdoptionRepository();

  AppSuccessResponse submitPetAdoption({required Payload payload});
}
