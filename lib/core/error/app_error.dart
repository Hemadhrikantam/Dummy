import 'package:equatable/equatable.dart';

abstract class AppError extends Equatable {
  final String message;
  final int? statusCode;
  const AppError({required this.message, this.statusCode});
}

class ErrorMessage extends AppError {
  const ErrorMessage({required super.message, super.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}
