part of 'pet_form_bloc.dart';

@freezed
abstract class PetFormState with _$PetFormState {
    const factory PetFormState({
    @Default(Status.init) final Status submitStatus,

    @Default(NotEmpty.pure()) final NotEmpty petName,
    @Default(NotEmpty.pure()) final NotEmpty petType,
    @Default(null) final DateTime? dob,
    @Default(0) final int weight,
    @Default(DropItemFrom.pure()) final DropItemFrom breed,
    @Default([]) final List<DropItemFrom> personalityTag,
    @Default(NotEmpty.pure()) final NotEmpty imagePath,
    //
    @Default([]) final List<DropItem> catbreeds,
    @Default([]) final List<DropItem> dogbreeds,
    @Default([]) final List<DropItem> personalityTags,
    }) = _PetFormState;
}

