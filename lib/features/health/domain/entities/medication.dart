import 'package:equatable/equatable.dart';

class PetMedication extends Equatable {
  // Core
  final String id;
  final String petId;
  final String name;
  final String company;
  final String dosage; // e.g. "142 tablets"
  final String frequencyId;
  final String? frequencyName;

  // Dates
  final DateTime startDate;
  final DateTime? endDate;

  // Notes / media
  final String notes;
  final String? imageUrl;

  // Audit / flags
  final bool isActive;
  final String createdBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Nested
  final List<MedicationTimeslot> timeslots;
  final MedicationReminder? reminder;

  const PetMedication({
    required this.id,
    required this.petId,
    required this.name,
    required this.company,
    required this.dosage,
    required this.frequencyId,
    this.frequencyName,
    required this.startDate,
    this.endDate,
    this.notes = "",
    this.imageUrl,
    required this.isActive,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    this.timeslots = const [],
    this.reminder,
  });

  @override
  List<Object?> get props => [
    id,
    petId,
    name,
    company,
    dosage,
    frequencyId,
    frequencyName,
    startDate,
    endDate,
    notes,
    imageUrl,
    isActive,
    createdBy,
    createdAt,
    updatedAt,
    timeslots,
    reminder,
  ];
}

class MedicationTimeslot extends Equatable {
  final String id;
  final String name; // e.g. "Morning"
  final String defaultTime; // "HH:mm:ss"
  final String? customTime; // "HH:mm:ss" or null

  const MedicationTimeslot({
    required this.id,
    required this.name,
    required this.defaultTime,
    this.customTime,
  });

  @override
  List<Object?> get props => [id, name, defaultTime, customTime];
}

class MedicationReminder extends Equatable {
  final String id;
  final DateTime? reminderDate;
  final String? timezone; // e.g. "UTC"
  final bool isEnabled;
  final DateTime createdAt;
  final DateTime updatedAt;

  const MedicationReminder({
    required this.id,
    this.reminderDate,
    this.timezone,
    required this.isEnabled,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id,
    reminderDate,
    timezone,
    isEnabled,
    createdAt,
    updatedAt,
  ];
}
