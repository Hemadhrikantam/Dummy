part of 'pet_dairy_bloc.dart';

@freezed
class PetDairyEvent with _$PetDairyEvent {
  const factory PetDairyEvent.initialization() = _Initialization;
  const factory PetDairyEvent.eventId(DropItem id) = _EventId;
  const factory PetDairyEvent.deleteMedia(int id) = _DeleteMedia;
  const factory PetDairyEvent.updateMediaFavroute(int id, bool value) =
      _UpdateMediaFavroute;
}
