import 'package:equatable/equatable.dart';

class PetMeal extends Equatable {
  final int id;
  final String date;
  final String timeOfMeal;
  final String mealType;
  final String notes;
  final String media;
  final int pet;

  const PetMeal({
    required this.id,
    required this.date,
    required this.timeOfMeal,
    required this.mealType,
    required this.notes,
    required this.media,
    required this.pet,
  });

  @override
  List<Object?> get props => [
        id,
        date,
        timeOfMeal,
        mealType,
        notes,
        media,
        pet,
      ];
}
