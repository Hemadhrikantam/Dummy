import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/domain/repositories/pet_adoption_repository.dart';

class PetTypesUsecases {
  PetTypesUsecases(this.repository);

  final PetAdoptionRepository repository;

  AppTypeResponse<List<DropItem>> call() {
    return repository.petTypes();
  }
}
