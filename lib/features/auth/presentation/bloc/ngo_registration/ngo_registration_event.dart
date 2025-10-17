part of 'ngo_registration_bloc.dart';

@freezed
class NgoRegistrationEvent with _$NgoRegistrationEvent {
  const factory NgoRegistrationEvent.ngoName(String value) = _NgoName;
  const factory NgoRegistrationEvent.contactPersonName(String value) =
      _ContactPersonName;
  const factory NgoRegistrationEvent.email(String value) = _Email;
  const factory NgoRegistrationEvent.phone(String value) = _Phone;
  const factory NgoRegistrationEvent.address(String value) = _Address;
  const factory NgoRegistrationEvent.pincode(String value) = _PinCode;
  const factory NgoRegistrationEvent.registrationProofFile(String path) =
      _RegistrationProofFile;
  const factory NgoRegistrationEvent.submit() = _Submit;
}