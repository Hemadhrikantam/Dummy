import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/addoption/data/datasources/pet_adoption_datasource.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/domain/repositories/pet_adoption_repository.dart';

class PetAdoptionRepositoryImpl extends PetAdoptionRepository {
  PetAdoptionRepositoryImpl(this.datasource);

  final PetAdoptionDatasource datasource;

  @override
  AppSuccessResponse submitPetAdoption({required Payload payload}) {
    return datasource.submitPetAdoption(payload: payload);
  }

  @override
  AppTypeResponse<List<Adoption>> adoptions() {
   return datasource.adoptions();
  }
}
