part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = _Init;
  const factory AuthEvent.initialization() = _Initialization;
  const factory AuthEvent.yourself(Yourself value) = _Yourself;
}
