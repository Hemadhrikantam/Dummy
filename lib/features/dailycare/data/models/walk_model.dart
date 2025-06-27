import '../../domain/entities/walk.dart';

class PetWalkModel extends PetWalk {
  const PetWalkModel({
    required super.id,
    required super.date,
    required super.duration,
    required super.location,
    required super.notes,
    required super.media,
    required super.pet,
  });

  factory PetWalkModel.fromJson(Map<String, dynamic> json) {
    return PetWalkModel(
      id: json['id'] as int,
      date: json['date'] as String,
      duration: json['duration'] as String,
      location: json['location'] as String,
      notes: json['notes'] as String,
      media: json['media'] as String,
      pet: json['pet'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'duration': duration,
      'location': location,
      'notes': notes,
      'media': media,
      'pet': pet,
    };
  }
}
