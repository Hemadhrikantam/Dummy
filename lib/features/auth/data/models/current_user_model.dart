import '../../domain/entities/current_user.dart';

class CurrentUserModel extends CurrentUser {
  const CurrentUserModel({
    required super.message,
    required super.user,
    required super.isPetCreated,
  });

  factory CurrentUserModel.fromMap(Map<String, dynamic> map) {
    return CurrentUserModel(
      message: map['message'] ?? '',
      user: UserModel.fromMap(map['data'] ?? {}),
      isPetCreated: !(map['data']['requiresOnboarding'] ?? true),
    );
  }
}

class UserModel extends User {
  const UserModel({required super.phone, required super.userType});
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      phone: map['mobileNumber'] ?? '',
      userType: map['accountType'] ?? '',
    );
  }
}
