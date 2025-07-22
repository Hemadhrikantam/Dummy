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
      user:UserModel.fromMap(map['user'] ?? {}), 
      isPetCreated: map['is_pet_created'] ?? false,
      
    );
  }
}

class UserModel extends User {
const  UserModel({required super.phone, required super.userType});
    factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      phone: map['phone'] ?? '',
      userType: map['user_type'] ?? '',
    );
  }
}