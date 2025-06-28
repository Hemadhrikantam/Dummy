part of 'walk_form_bloc.dart';

@freezed
abstract class WalkFormState with _$WalkFormState {
  const factory WalkFormState({
    @Default(Status.init) final Status submitStatus,
    @Default([]) final List<DropItem> durations,
    @Default(DropdownValue.pure()) final DropdownValue duration,
    @Default(NotEmpty.pure()) final NotEmpty location,
    @Default(NotEmpty.pure()) final NotEmpty date,
    @Default(NotEmpty.pure()) final NotEmpty notes,
    @Default(NotEmpty.pure()) final NotEmpty media,
    @Default(0) final int petId,
    @Default(false) final bool validation,
  }) = _WalkFormState;
}
