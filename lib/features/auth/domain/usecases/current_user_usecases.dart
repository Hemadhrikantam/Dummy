import '../../../../core/utils/type_def.dart';
import '../entities/current_user.dart';
import '../repositories/auth_repository.dart';

class CurrentUserUsecases {
  CurrentUserUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<CurrentUser?> call() {
    return authRepository.currentUser();
  }
}
