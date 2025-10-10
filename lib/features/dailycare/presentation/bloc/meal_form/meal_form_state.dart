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
    @Default(false) final bool validation,
    @Default('') final String petId,
  }) = _MealFormState;
}

extension WalkValidation on MealFormState {
  bool get validationX {
    return Formz.validate([mealTime, date, notes, media, mealType]);
  }
}
