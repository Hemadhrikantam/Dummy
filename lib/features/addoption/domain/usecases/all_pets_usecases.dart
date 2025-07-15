
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/domain/repositories/pet_adoption_repository.dart';

class AllPetsUsecases {
  AllPetsUsecases(this.repository);

  final PetAdoptionRepository repository;

  AppTypeResponse<List<Adoption>> call() {
    return repository.allPets();
  }
}
