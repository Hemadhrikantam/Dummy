import 'package:equatable/equatable.dart';

import '../utils/type_def.dart';
import 'payload.dart';

class RegisterAccountPayload extends Equatable implements Payload {
  const RegisterAccountPayload({
    required this.name,
    required this.email,
    required this.password,
  });
  final String name;
  final String email;
  final String password;
  @override
  List<Object?> get props => [name, email, password];

  @override
  JsonMap toMap() => {'name': name, 'email': email, 'password': password};
}
