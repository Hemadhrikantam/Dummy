import 'package:equatable/equatable.dart';

class PetVaccination extends Equatable {
  final int id;
  final bool reminder;
  final String vaccinationName;
  final String company;
  final String dateAdministered;
  final String dueDate;

  const PetVaccination({
    required this.id,
    required this.reminder,
    required this.vaccinationName,
    required this.company,
    required this.dateAdministered,
    required this.dueDate,
  });

  @override
  List<Object?> get props => [
    id,
    reminder,
    vaccinationName,
    company,
    dateAdministered,
    dueDate,
  ];
}
