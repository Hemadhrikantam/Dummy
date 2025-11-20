import 'package:equatable/equatable.dart';
import 'payload.dart';
import '../utils/type_def.dart';

class EditAccountPayload extends Equatable implements Payload {
  const EditAccountPayload({
    required this.accountName,
    required this.username,
    required this.preferredCurrency,
    required this.email,
  });

  final String accountName;
  final String username;
  final String preferredCurrency;
  final String email;

  @override
  List<Object?> get props => [
        accountName,
        username,
        preferredCurrency,
        email,
      ];

  @override
  JsonMap toMap() => {
        'account_name': accountName,
        'username': username,
        'preferred_currency': preferredCurrency,
        'email': email,
      };
}