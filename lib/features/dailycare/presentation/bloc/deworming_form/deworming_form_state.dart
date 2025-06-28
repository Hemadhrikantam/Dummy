part of 'deworming_form_bloc.dart';

@freezed
abstract class DewormingFormState with _$DewormingFormState {
  const factory DewormingFormState({
    @Default(Status.init) Status submitStatus,

    // Form fields
    @Default(NotEmpty.pure()) NotEmpty date,
    @Default(NotEmpty.pure()) NotEmpty productName,
    @Default(NotEmpty.pure()) NotEmpty dueDate,
    @Default(DropdownValue.pure()) DropdownValue reminderHour,
    @Default(DropdownValue.pure()) DropdownValue reminderMin,
    @Default(DropdownValue.pure()) DropdownValue reminderAmPm,
    @Default(NotEmpty.pure()) NotEmpty notes,
    @Default(NotEmpty.pure()) NotEmpty media,

    @Default(DropdownValue.pure()) DropdownValue frequency,
    @Default(DropdownValue.pure()) DropdownValue reminderTimezone,
    @Default(DropdownValue.pure()) DropdownValue reminderBefore,

    @Default([]) List<DropItem> frequencies,
    @Default([]) List<DropItem> reminderTimezones,
    @Default([]) List<DropItem> reminderBefores,

    @Default(false) bool validation,
    @Default(0) int petId,
  }) = _DewormingFormState;
}

extension DewormingFormValidation on DewormingFormState {
  bool get validationX {
    return Formz.validate([
      date,
      productName,
      dueDate,
      reminderHour,
      reminderMin,
      reminderAmPm,
      notes,
      media,
      frequency,
      reminderTimezone,
      reminderBefore,
    ]);
  }
}