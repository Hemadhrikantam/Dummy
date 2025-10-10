import 'package:dummy/features/signup/data/models/enum_model.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class EnumsUsecases {
  EnumsUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<EnumModel> call() {
    return authRepository.enums();
  }
}
