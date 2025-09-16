import '../../../../core/models/login_model.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class CurrentUserUsecases {
  CurrentUserUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<LoginModel?> call() {
    return authRepository.currentUser();
  }
}
