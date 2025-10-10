import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class MealPayload extends Equatable implements Payload {
  const MealPayload({
    required this.date,
    required this.timeOfMeal,
    required this.mealType,
    required this.notes,
    required this.media,
    required this.pet,
  });

  final DateTime date;
  final String timeOfMeal;
  final String mealType;
  final String notes;
  final MultipartFile media;
  final String pet;

  @override
  List<Object?> get props => [date, timeOfMeal, mealType, notes, media, pet];

  @override
  JsonMap toMap() => {
    'date': AppUtil.formatDate(date),
    'time_of_meal': timeOfMeal,
    'meal_type': mealType,
    'notes': notes,
    'pet': pet,
    'media': media,
  };
}
