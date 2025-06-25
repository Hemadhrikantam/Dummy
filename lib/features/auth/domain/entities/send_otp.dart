import 'package:equatable/equatable.dart';

class SendOtp extends Equatable {
  final String message;
  final bool isRegistered;

  const SendOtp({
    required this.message,
    required this.isRegistered,
  });

  @override
  List<Object?> get props => [message, isRegistered];
}