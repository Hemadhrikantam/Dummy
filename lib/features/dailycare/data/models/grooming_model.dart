import '../../domain/entities/grooming.dart';

class PetGroomingModel extends PetGrooming {
  const PetGroomingModel({
    required super.id,
    required super.date,
    required super.groomingType,
    required super.notes,
    required super.media,
    required super.pet,
  });

  factory PetGroomingModel.fromJson(Map<String, dynamic> json) {
    return PetGroomingModel(
      id: json['id'] as int,
      date: json['date'] as String,
      groomingType: json['grooming_type'] as String,
      notes: json['notes'] as String,
      media: json['media'] as String,
      pet: json['pet'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'grooming_type': groomingType,
      'notes': notes,
      'media': media,
      'pet': pet,
    };
  }
}
