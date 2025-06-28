import 'package:equatable/equatable.dart';

class Frequency extends Equatable{
  final int id;
  final String frequency;

  const Frequency({required this.id, required this.frequency});

  @override
  List<Object?> get props => [id, frequency];
}