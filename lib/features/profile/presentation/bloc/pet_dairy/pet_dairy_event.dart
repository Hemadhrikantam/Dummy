part of 'pet_dairy_bloc.dart';

@freezed
class PetDairyEvent with _$PetDairyEvent {
  const factory PetDairyEvent.initialization() = _Initialization;
  const factory PetDairyEvent.loadMedias() = _LoadMedias;
  const factory PetDairyEvent.loadTimelines() = _LoadTimelines;
  const factory PetDairyEvent.eventId(DropStringItem id) = _EventId;
  const factory PetDairyEvent.deleteMedia(String id) = _DeleteMedia;
  const factory PetDairyEvent.updateMediaFavroute(String id, bool value) =
      _UpdateMediaFavroute;
}
