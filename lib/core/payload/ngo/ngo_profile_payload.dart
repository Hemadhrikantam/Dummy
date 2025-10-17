import 'package:dummy/core/payload/payload.dart';

class NgoProfilePayload extends Payload {
  final String ngoName;
  final String contactPersonName;
  final String email;
  final String phone;
  final String pincode;
  final String address;
  final String? logoUrl;
  final String? registrationProofUrl;

  NgoProfilePayload({
    required this.ngoName,
    required this.contactPersonName,
    required this.email,
    required this.phone,
    required this.pincode,
    required this.address,
    this.logoUrl,
    this.registrationProofUrl,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'ngo_name': ngoName,
      'contact_person_name': contactPersonName,
      'email': email,
      'phone': phone,
      'pincode': pincode,
      'address': address,
      if (logoUrl != null) 'logo_url': logoUrl,
      if (registrationProofUrl != null)
        'registration_proof_url': registrationProofUrl,
    };
  }
}