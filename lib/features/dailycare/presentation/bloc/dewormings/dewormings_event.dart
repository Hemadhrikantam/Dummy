part of 'dewormings_bloc.dart';

@freezed
class DewormingsEvent with _$DewormingsEvent {
  const factory DewormingsEvent.init() = _Init;
  const factory DewormingsEvent.dewormings(DateTime? date) = _Dewormings;
}
