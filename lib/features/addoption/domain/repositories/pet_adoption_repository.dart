import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';

abstract class PetAdoptionRepository {
  PetAdoptionRepository();

  AppSuccessResponse submitPetAdoption({required Payload payload});
  AppSuccessResponse editPetAdoption({
    required Payload payload,
    required int id,
  });
  AppTypeResponse<List<Adoption>> adoptions();
  AppTypeResponse<Adoption> adoption({required int id});
}
