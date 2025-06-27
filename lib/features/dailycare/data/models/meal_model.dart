import '../../domain/entities/meal.dart';

class PetMealModel extends PetMeal {
  const PetMealModel({
    required super.id,
    required super.date,
    required super.timeOfMeal,
    required super.mealType,
    required super.notes,
    required super.media,
    required super.pet,
  });

  factory PetMealModel.fromJson(Map<String, dynamic> json) {
    return PetMealModel(
      id: json['id'] as int,
      date: json['date'] as String,
      timeOfMeal: json['time_of_meal'] as String,
      mealType: json['meal_type'] as String,
      notes: json['notes'] as String,
      media: json['media'] as String,
      pet: json['pet'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'time_of_meal': timeOfMeal,
      'meal_type': mealType,
      'notes': notes,
      'media': media,
      'pet': pet,
    };
  }
}
