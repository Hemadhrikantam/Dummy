import 'package:dummy/features/ngo/domain/entities/ngo_profile.dart';

class NgoProfileModel extends NgoProfile {

  const NgoProfileModel({
    required super.id,
    required super.ngoName,
    required super.contactPersonName,
    required super.email,
    required super.phone,
    required super.pincode,
    required super.address,
    super.registrationProofUrl,
    super.logoUrl,
    super.latitude,
    super.longitude,
    super.createdAt,
    super.updatedAt,
  });

  factory NgoProfileModel.fromMap(Map<String, dynamic> map) {
    return NgoProfileModel(
      id: map['id'] as String? ?? '',
      ngoName: map['ngo_name'] as String? ?? '',
      contactPersonName: map['contact_person_name'] as String? ?? '',
      email: map['email'] as String? ?? '',
      phone: map['phone'] as String? ?? '',
      pincode: map['pincode'] as String? ?? '',
      address: map['address'] as String? ?? '',
      registrationProofUrl: map['registration_proof_url'] as String?,
      logoUrl: map['logo_url'] as String?,
      latitude: map['latitude']?.toString(),
      longitude: map['longitude']?.toString(),
      createdAt: (map['created_at'] != null)
          ? DateTime.tryParse(map['created_at'] as String)
          : null,
      updatedAt: (map['updated_at'] != null)
          ? DateTime.tryParse(map['updated_at'] as String)
          : null,
    );
  }
}