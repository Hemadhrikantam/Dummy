import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/domain/repositories/pet_adoption_repository.dart';

class EditPetAdoptionUsecases {
  EditPetAdoptionUsecases(this.repository);

  final PetAdoptionRepository repository;

  AppSuccessResponse call(Payload payload, int id) {
    return repository.editPetAdoption(payload: payload, id: id);
  }
}
