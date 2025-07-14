import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/domain/repositories/pet_adoption_repository.dart';

class AdoptionDetailsUsecases {
  AdoptionDetailsUsecases(this.repository);

  final PetAdoptionRepository repository;

  AppTypeResponse<Adoption> call({required int id}) {
    return repository.adoption(id: id);
  }
}
