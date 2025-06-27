part of 'meals_bloc.dart';

@freezed
class MealsEvent with _$MealsEvent {
  const factory MealsEvent.init() = _Init;
  const factory MealsEvent.meals(DateTime? date) = _Meals;
}
