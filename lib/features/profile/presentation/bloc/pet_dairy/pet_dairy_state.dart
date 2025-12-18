part of 'pet_dairy_bloc.dart';

@freezed
abstract class PetDairyState with _$PetDairyState {
  const factory PetDairyState({
    @Default(Status.init) final Status initStatus,
    @Default([]) final List<DropStringItem> eventFields,
    @Default([]) final List<Timeline> timelines,
    @Default([]) final List<Media> medias,
    @Default([]) final List<Media> favoriteMedias,
    @Default([]) final List<Documents> documents,
    @Default(DropdownStringValue.pure()) final DropdownStringValue eventId,
    @Default([]) final List<Timeline> memories,
    @Default(Status.init) final Status addMemoryStatus,
  }) = _PetDairyState;
}
