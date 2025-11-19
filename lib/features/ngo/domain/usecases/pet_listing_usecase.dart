import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';
import 'package:dummy/core/utils/type_def.dart';

class PetListingUsecase {
  PetListingUsecase(this.repository);
  final NgoRepository repository;
  AppTypeResponse<CountListing> call({
     bool all = false,
  }) {
    return repository.petListing(all: all);
  }
}