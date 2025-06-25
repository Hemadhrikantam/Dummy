import 'package:dummy/features/auth/data/models/current_user_model.dart';

import '../../../../core/utils/type_def.dart';
import '../repositories/auth_repository.dart';

class RegisterUserUsecases {
  RegisterUserUsecases(this.authRepository);
  final AuthRepository authRepository;
  AppTypeResponse<CurrentUserModel> call({required String phone, required String userType}) {
    return authRepository.registerUser(phone: phone, userType: userType );
  }
}