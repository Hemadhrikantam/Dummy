import 'package:dummy/features/signup/domain/entities/pet_image.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/signup_repository.dart';

class PetImageUsecases {
  PetImageUsecases(this.repository);
  final SignupRepository repository;
  AppTypeResponse<PetImage> call({required String path}) {
    return repository.petImage(path: path);
  }
}
