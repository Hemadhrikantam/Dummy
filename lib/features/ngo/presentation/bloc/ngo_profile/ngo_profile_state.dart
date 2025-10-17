part of 'ngo_profile_bloc.dart';

@freezed
class NgoProfileState with _$NgoProfileState {
  const factory NgoProfileState({
    @Default(Status.init) Status initStatus,
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty ngoName,
    @Default(NotEmpty.pure()) NotEmpty contactPersonName,
    @Default(Email.pure()) Email email,
    @Default(MobileNo.pure()) MobileNo phone,
    @Default(PinCode.pure()) PinCode pincode,
    @Default(NotEmpty.pure()) NotEmpty address,
    @Default(NotEmpty.pure()) NotEmpty logoFile,
    @Default(NotEmpty.pure()) NotEmpty registrationProofFile,
    @Default('') String logoUrl,
    @Default('') String registrationProofUrl,
  }) = _NgoProfileState;
}
