part of 'meals_bloc.dart';

@freezed
abstract class MealsState with _$MealsState {
  const factory MealsState({
    @Default(Status.init) final Status mealsStatus,
    @Default([]) final List<PetMeal> meals,
  }) = _MealsState;
}
