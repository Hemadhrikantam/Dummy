part of 'meal_form_bloc.dart';

@freezed
class MealFormEvent with _$MealFormEvent {
  const factory MealFormEvent.init(String petId) = _Init;
  const factory MealFormEvent.date(String value) = _Date;
  const factory MealFormEvent.mealType(String value) = _MealType;
  const factory MealFormEvent.notes(String value) = _Notes;
  const factory MealFormEvent.media(String value) = _Media;
  const factory MealFormEvent.mealTime(DropItem value) = _MealTime;
  const factory MealFormEvent.submit() = _Submit;
}
