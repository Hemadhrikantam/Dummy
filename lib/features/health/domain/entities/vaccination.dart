// domain/entities/vaccination.dart
import 'package:equatable/equatable.dart';

class PetVaccination extends Equatable {
  /// Core
  final String id;
  final String petId;
  final String name;
  final String frequencyId;
  final String? frequencyName;

  /// Dates / status
  final DateTime dueDate;
  final String status; // "pending" | "processing" | "completed" | "failed" | ...

  /// Notes / media
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
    required this.frequencyId,
    this.frequencyName,
    required this.dueDate,
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
        frequencyId,
        frequencyName,
        dueDate,
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
