import 'package:equatable/equatable.dart';
import 'meal.dart';

class PetDeworming extends Equatable {
  final String id;
  final String petId;
  final String date; // normalized YYYY-MM-DD
  final String productName;
  final String dueDate; // normalized YYYY-MM-DD
  final String? notes;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? frequencyId;
  final String? frequencyName;
  final String? createdById;
  final List<MediaItem> media;
  // Reminder details
  final String? reminderId;
  final DateTime? reminderDate;
  final String? reminderTime; // HH:mm:ss
  final String? reminderTimezone; // e.g., IST
  final bool? reminderEnabled;
  final String? reminderCreatedBy;
  final DateTime? reminderCreatedAt;
  final DateTime? reminderUpdatedAt;

  const PetDeworming({
    required this.id,
    required this.petId,
    required this.date,
    required this.productName,
    required this.dueDate,
    required this.media,
    this.notes,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.frequencyId,
    this.frequencyName,
    this.createdById,
    this.reminderId,
    this.reminderDate,
    this.reminderTime,
    this.reminderTimezone,
    this.reminderEnabled,
    this.reminderCreatedBy,
    this.reminderCreatedAt,
    this.reminderUpdatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        petId,
        date,
        productName,
        dueDate,
        notes,
        isActive,
        createdAt,
        updatedAt,
        frequencyId,
        frequencyName,
        createdById,
        media,
        reminderId,
        reminderDate,
        reminderTime,
        reminderTimezone,
        reminderEnabled,
        reminderCreatedBy,
        reminderCreatedAt,
        reminderUpdatedAt,
      ];
}
