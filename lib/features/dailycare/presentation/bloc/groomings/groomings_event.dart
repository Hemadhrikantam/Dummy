part of 'groomings_bloc.dart';

@freezed
class GroomingsEvent with _$GroomingsEvent {
  const factory GroomingsEvent.init() = _Init;
  const factory GroomingsEvent.groomings(DateTime? date) = _Groomings;
}
