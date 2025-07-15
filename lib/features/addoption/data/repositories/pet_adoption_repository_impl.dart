import 'package:dummy/core/models/drop_item.dart';
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

  @override
  AppSuccessResponse editPetAdoption({
    required Payload payload,
    required int id,
  }) {
    return datasource.editPetAdoption(payload: payload, id: id);
  }

  @override
  AppTypeResponse<Adoption> adoption({required int id}) {
    return datasource.adoption(id: id);
  }

  @override
  AppTypeResponse<List<DropItem>> petTypes() {
    return datasource.petTypes();
  }
  
  @override
  AppTypeResponse<List<Adoption>> allPets() {
    return datasource.allPets();
  }
}
