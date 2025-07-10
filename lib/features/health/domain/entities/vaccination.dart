import 'package:equatable/equatable.dart';

class PetVaccination extends Equatable {
  final int id;
  final String vaccinationName;
  final String company;
  final bool isGiven;
  final DateTime dateAdministered;
  final DateTime dueDate;
  final String note;
  final String reminderTime;
  final String media;
  final int frequency;

  const PetVaccination({
    required this.isGiven,
    required this.note,
    required this.reminderTime,
    required this.media,
    required this.frequency,
    required this.id,
    required this.vaccinationName,
    required this.company,
    required this.dateAdministered,
    required this.dueDate,
  });

  @override
  List<Object?> get props => [
    id,
    vaccinationName,
    company,
    isGiven,
    dateAdministered,
    dueDate,
    note,
    reminderTime,
    media,
    frequency,
  ];
}
