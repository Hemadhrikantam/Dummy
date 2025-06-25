part of 'pet_dairy_bloc.dart';

@freezed
abstract class PetDairyState with _$PetDairyState {
  const factory PetDairyState({
    @Default(Status.init) final Status initStatus,
    @Default([]) final List<DropItem> eventFields,
    @Default([]) final List<EventFields> media,
    @Default([]) final List<Documents> documents,
    @Default(DropdownValue.pure()) final DropdownValue eventId,
    }) = _PetDairyState;
}
