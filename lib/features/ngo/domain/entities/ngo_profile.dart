import 'package:equatable/equatable.dart';

class NgoProfile extends Equatable {
  final String id;
  final String ngoName;
  final String contactPersonName;
  final String email;
  final String phone;
  final String pincode;
  final String address;
  final String? registrationProofUrl;
  final String? logoUrl;
  final String? latitude;
  final String? longitude;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  NgoProfile({
    required this.id,
    required this.ngoName,
    required this.contactPersonName,
    required this.email,
    required this.phone,
    required this.pincode,
    required this.address,
    this.registrationProofUrl,
    this.logoUrl,
    this.latitude,
    this.longitude,
    this.createdAt,
    this.updatedAt,
  });
  
  @override
  List<Object?> get props => [
        id,
        ngoName,
        contactPersonName,
        email,
        phone,
        pincode,
        address,
        registrationProofUrl,
        logoUrl,
        latitude,
        longitude,
        createdAt,
        updatedAt,
      ];
}