import 'package:equatable/equatable.dart';

class RemindBefore extends Equatable{
  final int id;
  final int days;
  final String title;

  const RemindBefore({required this.days, required this.id, required this.title});

  @override
  List<Object?> get props => [id, title,days];
}