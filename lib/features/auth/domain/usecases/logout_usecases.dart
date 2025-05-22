import '../repositories/auth_repository.dart';

class LogoutUsecases {
  LogoutUsecases(this.authRepository);
  final AuthRepository authRepository;
  Future<bool?> call() {
    return authRepository.logout();
  }
}
