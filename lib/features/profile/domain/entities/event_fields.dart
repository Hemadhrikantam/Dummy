import 'package:equatable/equatable.dart';

class EventFields extends Equatable {
  const EventFields({required this.id, required this.title});
  final int id;
  final String title;
  @override
  List<Object?> get props => [id, title];
}
