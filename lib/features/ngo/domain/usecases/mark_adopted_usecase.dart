import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';

class MarkAdoptedUsecase {
  MarkAdoptedUsecase(this.repository);
  final NgoRepository repository;

  AppSuccessResponse call({
    required String id,
    required bool isActive,
    required String status,
  }) {
    return repository.markPetListingStatus(
      id: id,
      isActive: isActive,
      status: status,
    );
  }
}