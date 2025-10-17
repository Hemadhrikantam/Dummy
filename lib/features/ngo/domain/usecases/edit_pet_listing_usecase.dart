import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';

class EditPetListingUsecase {
  EditPetListingUsecase(this.repository);
  final NgoRepository repository;

  AppSuccessResponse call({
    required String id,
    required String desc,
    required String petId,
    required String status,
  }) {
    return repository.updatePetListing(
      id: id,
      desc: desc,
      petId: petId,
      status: status,
    );
  }
}