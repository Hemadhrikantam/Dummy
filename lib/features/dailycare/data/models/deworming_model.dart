import '../../domain/entities/deworming.dart';

class PetDewormingModel extends PetDeworming {
  const PetDewormingModel({
    required super.id,
    required super.date,
    required super.productName,
    required super.dueDate,
    required super.reminderTime,
    required super.notes,
    required super.media,
    required super.pet,
    required super.frequency,
    required super.reminderTimezone,
    required super.reminderBefore,
  });

  factory PetDewormingModel.fromJson(Map<String, dynamic> json) {
    return PetDewormingModel(
      id: json['id'] as int,
      date: json['date'] as String,
      dueDate: json['due_date'] as String,
      productName: json['product_name'] as String,
      reminderTime: json['reminder_time'] as String,
      notes: json['notes'] as String,
      media: json['media'] as String,
      pet: json['pet'] as int,
      frequency: json['freequency'] as int,
      reminderTimezone: json['reminder_timezone'] as int,
      reminderBefore: json['reminder_before'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'product_name': productName,
      'due_date': dueDate,
      'reminder_time': reminderTime,
      'notes': notes,
      'media': media,
      'pet': pet,
      'freequency': frequency,
      'reminder_timezone': reminderTimezone,
      'reminder_before': reminderBefore,
    };
  }
}
