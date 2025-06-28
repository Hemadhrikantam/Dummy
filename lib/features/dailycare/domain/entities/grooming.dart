import 'package:equatable/equatable.dart';

class PetGrooming extends Equatable {
  final int id;
  final String date;
  final String groomingType;
  final String notes;
  final String media;
  final int pet;

  const PetGrooming({
    required this.id,
    required this.date,
    required this.groomingType,
    required this.notes,
    required this.media,
    required this.pet,
  });

  @override
  List<Object?> get props => [
        id,
        date,
        groomingType,
        notes,
        media,
        pet,
      ];
}
