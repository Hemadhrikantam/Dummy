// domain/entities/vaccination.dart
import 'package:equatable/equatable.dart';

class PetVaccination extends Equatable {
  /// Core
  final String id;
  final String petId;
  final String name;
  final String companyName;
  final String timeFrequencyId;
  final String? timeFrequencyName;

  /// Dates / status
  final DateTime? dueDate;
  final DateTime? dateAdministered;
  final String status;
  final String notes;
  final String? imageUrl;

  /// Audit / flags
  final bool isActive;
  final String createdBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// Reminder
  final String? reminderId;
  final DateTime? reminderDate;
  final String? timezone;
  final bool? reminderEnabled;

  const PetVaccination({
    required this.id,
    required this.petId,
    required this.name,
    required this.companyName,
    required this.timeFrequencyId,
    this.timeFrequencyName,
    required this.dueDate,
    this.dateAdministered,
    required this.status,
    this.notes = "",
    this.imageUrl,
    required this.isActive,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    this.reminderId,
    this.reminderDate,
    this.timezone,
    this.reminderEnabled,
  });

  @override
  List<Object?> get props => [
    id,
    petId,
    name,
    companyName,
    timeFrequencyId,
    timeFrequencyName,
    dueDate,
    dateAdministered,
    status,
    notes,
    imageUrl,
    isActive,
    createdBy,
    createdAt,
    updatedAt,
    reminderId,
    reminderDate,
    timezone,
    reminderEnabled,
  ];
}
