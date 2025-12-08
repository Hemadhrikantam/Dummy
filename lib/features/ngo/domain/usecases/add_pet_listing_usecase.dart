import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';

class AddPetListingUsecase {
  AddPetListingUsecase(this.repository);
  final NgoRepository repository;

  AppSuccessResponse call({
    required String desc,
    required String petId,
    required String status,
    String? contactEmail,
    String? contactPhone,
    String? contactAddress,
  }) {
    return repository.addPetListing(
      desc: desc,
      petId: petId,
      status: status,
      contactEmail: contactEmail,
      contactPhone: contactPhone,
      contactAddress: contactAddress,
    );
  }
}
