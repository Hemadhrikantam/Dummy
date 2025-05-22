part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Status.init) Status status,
    @Default(Yourself.petParent) Yourself yourself,
  }) = _AuthState;
}
