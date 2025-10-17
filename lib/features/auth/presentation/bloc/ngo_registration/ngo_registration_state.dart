part of 'ngo_registration_bloc.dart';

@freezed
class NgoRegistrationState with _$NgoRegistrationState {
  const factory NgoRegistrationState({
    @Default(Status.init) Status initStatus,
    @Default(Status.init) Status submitStatus,
    @Default(NotEmpty.pure()) NotEmpty ngoName,
    @Default(NotEmpty.pure()) NotEmpty contactPersonName,
    @Default(Email.pure()) Email email,
    @Default(MobileNo.pure()) MobileNo phone,
    @Default(PinCode.pure()) PinCode pincode,
    @Default(NotEmpty.pure()) NotEmpty address,
    @Default(NotEmpty.pure()) NotEmpty registrationProofFile,
    @Default('') String logoUrl,
    @Default('') String latitude,
    @Default('') String longitude,
  }) = _NgoRegistrationState;
}
