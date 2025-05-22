import '../../../../core/models/login_model.dart';
import '../../../../core/utils/type_def.dart';
import '../entities/current_user.dart';
import '../repositories/auth_repository.dart';

class LoginUserUsecases {
  LoginUserUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<CurrentUser?> call({required LoginModel login}) {
    return authRepository.login(login: login);
  }
}
