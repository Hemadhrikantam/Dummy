part of 'dewormings_bloc.dart';

@freezed
abstract class DewormingsState with _$DewormingsState {
  const factory DewormingsState({
    @Default(Status.init) final Status dewormingsStatus,
    @Default([]) final List<PetDeworming> dewormings,
  }) = _DewormingsState;
}
