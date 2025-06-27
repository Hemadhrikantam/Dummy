part of 'meal_form_bloc.dart';

@freezed
abstract class MealFormState with _$MealFormState {
  const factory MealFormState({
    @Default(Status.init) final Status submitStatus,
    @Default([]) final List<DropItem> mealTimes,
     @Default(DropdownValue.pure()) final DropdownValue mealTime,
    @Default(NotEmpty.pure()) final NotEmpty date,
    @Default(NotEmpty.pure()) final NotEmpty mealType,
    @Default(NotEmpty.pure()) final NotEmpty notes,
    @Default(NotEmpty.pure()) final NotEmpty media,
  }) = _MealFormState;
}
