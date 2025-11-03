import 'package:equatable/equatable.dart';

class Clinic extends Equatable {
  const Clinic({
    required this.id,
    required this.name,
    required this.type,
    this.description,
    this.phone,
    this.email,
    this.website,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.latitude,
    this.longitude,
    this.googleMapsUrl,
    required this.isActive,
    required this.verified,
    required this.createdBy,
    this.verifiedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final String type;
  final String? description;
  final String? phone;
  final String? email;
  final String? website;
  final String? addressLine1;
  final String? addressLine2;
  final String? city;
  final String? state;
  final String? country;
  final String? pincode;
  final double? latitude;
  final double? longitude;
  final String? googleMapsUrl;
  final bool isActive;
  final bool verified;
  final String createdBy;
  final String? verifiedBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        description,
        phone,
        email,
        website,
        addressLine1,
        addressLine2,
        city,
        state,
        country,
        pincode,
        latitude,
        longitude,
        googleMapsUrl,
        isActive,
        verified,
        createdBy,
        verifiedBy,
        createdAt,
        updatedAt,
      ];
}