part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default([]) final List<DropItem> dogBreeds,
    @Default([]) final List<DropItem> catBreeds,
    @Default([]) final List<DropItem> personalityTags,
  }) =  _RegisterState;
}
