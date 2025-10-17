import 'package:dummy/features/ngo/domain/entities/ngo_profile.dart';
import 'package:dummy/features/ngo/domain/repositories/ngo_repository.dart';
import 'package:dummy/core/utils/type_def.dart';

class GetNgoProfileUsecase {
  GetNgoProfileUsecase(this.repository);
  final NgoRepository repository;

  AppTypeResponse<NgoProfile> call() {
    return repository.getProfile();
  }
}