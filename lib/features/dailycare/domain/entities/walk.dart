import 'package:equatable/equatable.dart';

class PetWalk extends Equatable {
  final int id;
  final String date;
  final String duration;
  final String location;
  final String notes;
  final String media;
  final int pet;

  const PetWalk({
    required this.id,
    required this.date,
    required this.duration,
    required this.location,
    required this.notes,
    required this.media,
    required this.pet,
  });

  @override
  List<Object?> get props => [
        id,
        date,
        duration,
        location,
        notes,
        media,
        pet,
      ];
}
