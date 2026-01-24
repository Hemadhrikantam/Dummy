part of 'ngo_home_bloc.dart';

@freezed
class NgoHomeEvent with _$NgoHomeEvent {
  const factory NgoHomeEvent.init() = _Init;
  const factory NgoHomeEvent.markStatus({
    required String id,
    required String status,
  }) = _MarkStatus;
  const factory NgoHomeEvent.deletePet({required String id}) = _DeletePet;
}