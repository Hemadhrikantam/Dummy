import 'package:equatable/equatable.dart';
import 'meal.dart';

class PetGrooming extends Equatable {
  final String id;
  final String petId;
  final String date;
  final String groomingType;
  final String? notes;
  final String? createdById;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? groomingTypeId;
  final String? groomingTypeName;
  final List<MediaItem> media;

  const PetGrooming({
    required this.id,
    required this.petId,
    required this.date,
    required this.groomingType,
    required this.media,
    this.notes,
    this.createdById,
    this.createdAt,
    this.updatedAt,
    this.groomingTypeId,
    this.groomingTypeName,
  });

  @override
  List<Object?> get props => [
        id,
        petId,
        date,
        groomingType,
        notes,
        createdById,
        createdAt,
        updatedAt,
        groomingTypeId,
        groomingTypeName,
        media,
      ];
}
