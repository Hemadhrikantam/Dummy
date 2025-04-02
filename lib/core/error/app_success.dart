import 'package:equatable/equatable.dart';

abstract class AppSuccess extends Equatable {
  final String message;
  const AppSuccess({required this.message});
}

class SuccessMessage extends AppSuccess {
  const SuccessMessage({required super.message});

  @override
  List<Object?> get props => [message];
}
