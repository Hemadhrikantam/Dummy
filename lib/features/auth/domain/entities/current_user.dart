import 'package:equatable/equatable.dart';

class CurrentUser extends Equatable {
  final String message;
  final User user;
  final bool isPetCreated;

  const CurrentUser( {
    required this.message,
    required this.user,
    required this.isPetCreated,
  });

  @override
  List<Object?> get props => [message, user, isPetCreated];
}

class User extends Equatable {
  const User({required this.phone, required this.userType});
  final String phone;
  final String userType;
  @override
  List<Object?> get props => [phone, userType];
}
