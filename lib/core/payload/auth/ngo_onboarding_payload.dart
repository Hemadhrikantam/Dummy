import 'package:equatable/equatable.dart';
import 'package:dummy/core/payload/payload.dart';
import 'package:dummy/core/utils/type_def.dart';

class NgoOnboardingPayload extends Equatable implements Payload {
  const NgoOnboardingPayload({
    required this.mobileNumber,
    required this.ngoName,
    required this.contactPersonName,
    this.email = '',
    this.phone = '',
    this.pincode = '',
    this.address = '',
    this.registrationProofFile = '',
    this.logoUrl = '',
    this.latitude = '',
    this.longitude = '',
  });

  final String mobileNumber;
  final String ngoName;
  final String contactPersonName;
  final String email;
  final String phone;
  final String pincode;
  final String address;
  final String registrationProofFile;
  final String logoUrl;
  final String latitude;
  final String longitude;

  @override
  List<Object?> get props => [
    mobileNumber,
    ngoName,
    contactPersonName,
    email,
    phone,
    pincode,
    address,
    registrationProofFile,
    logoUrl,
    latitude,
    longitude,
  ];

  @override
  JsonMap toMap() => {
    'mobile_number': mobileNumber,
    'ngo_name': ngoName,
    'contact_person_name': contactPersonName,
    'email': email,
    'phone': phone,
    'pincode': pincode,
    'address': address,
    'registration_proof_file': registrationProofFile,
    'logo_url': logoUrl,
    'latitude': latitude,
    'longitude': longitude,
  };
}