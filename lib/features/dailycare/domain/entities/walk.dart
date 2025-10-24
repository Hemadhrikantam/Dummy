import 'package:equatable/equatable.dart';
import 'meal.dart'; // for MediaItem

class PetWalk extends Equatable {
  final String id;
  final String petId;
  final String walkDate; // ISO or YYYY-MM-DD
  final int durationMinutes;
  final String location;
  final String notes;
  final List<MediaItem> media;
  final String? createdById;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const PetWalk({
    required this.id,
    required this.petId,
    required this.walkDate,
    required this.durationMinutes,
    required this.location,
    required this.notes,
    required this.media,
    this.createdById,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        petId,
        walkDate,
        durationMinutes,
        location,
        notes,
        media,
        createdById,
        createdAt,
        updatedAt,
      ];
}
