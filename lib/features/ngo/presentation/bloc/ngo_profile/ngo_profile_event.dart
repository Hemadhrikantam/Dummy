part of 'ngo_profile_bloc.dart';

@freezed
class NgoProfileEvent with _$NgoProfileEvent {
  const factory NgoProfileEvent.init() = _Init;
  const factory NgoProfileEvent.ngoName(String value) = _NgoName;
  const factory NgoProfileEvent.contactPersonName(String value) = _ContactPersonName;
  const factory NgoProfileEvent.email(String value) = _Email;
  const factory NgoProfileEvent.phone(String value) = _Phone;
  const factory NgoProfileEvent.pincode(String value) = _Pincode;
  const factory NgoProfileEvent.address(String value) = _Address;
  const factory NgoProfileEvent.logoFile(String path) = _LogoFile;
  const factory NgoProfileEvent.registrationProofFile(String path) = _RegistrationProofFile;
  const factory NgoProfileEvent.submit() = _Submit;
}