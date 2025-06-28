import 'package:equatable/equatable.dart';

class PetDeworming extends Equatable {
  final int id;
  final String date;
  final String productName;
  final String dueDate;
  final String reminderTime;
  final String notes;
  final String media;
  final int pet;
  final int frequency;
  final int reminderTimezone;
  final int reminderBefore;

  const PetDeworming({
    required this.id,
    required this.date,
    required this.productName,
    required this.dueDate,
    required this.reminderTime,
    required this.notes,
    required this.media,
    required this.pet,
    required this.frequency,
    required this.reminderTimezone,
    required this.reminderBefore,
  });

  @override
  List<Object?> get props => [
    id,
    date,
    productName,
    dueDate,
    reminderTime,
    notes,
    media,
    pet,
    frequency,
    reminderTimezone,
    reminderBefore,
  ];
}
