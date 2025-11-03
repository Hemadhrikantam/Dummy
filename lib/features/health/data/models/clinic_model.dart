import '../../domain/entities/clinic.dart';

class ClinicModel extends Clinic {
  const ClinicModel({
    required super.id,
    required super.name,
    required super.type,
    super.description,
    super.phone,
    super.email,
    super.website,
    super.addressLine1,
    super.addressLine2,
    super.city,
    super.state,
    super.country,
    super.pincode,
    super.latitude,
    super.longitude,
    super.googleMapsUrl,
    required super.isActive,
    required super.verified,
    required super.createdBy,
    super.verifiedBy,
    required super.createdAt,
    required super.updatedAt,
  });

  static double? _double(dynamic v) {
    if (v == null) return null;
    if (v is num) return v.toDouble();
    if (v is String && v.isNotEmpty) {
      return double.tryParse(v);
    }
    return null;
  }

  static DateTime _dt(dynamic v) => DateTime.parse(v as String);

  factory ClinicModel.fromJson(Map<String, dynamic> json) => ClinicModel(
        id: json['id'] as String,
        name: json['name'] as String,
        type: json['type'] as String,
        description: json['description'] as String?,
        phone: json['phone'] as String?,
        email: json['email'] as String?,
        website: json['website'] as String?,
        addressLine1: json['address_line1'] as String?,
        addressLine2: json['address_line2'] as String?,
        city: json['city'] as String?,
        state: json['state'] as String?,
        country: json['country'] as String?,
        pincode: json['pincode'] as String?,
        latitude: _double(json['latitude']),
        longitude: _double(json['longitude']),
        googleMapsUrl: json['google_maps_url'] as String?,
        isActive: (json['is_active'] as bool?) ?? false,
        verified: (json['verified'] as bool?) ?? false,
        createdBy: json['created_by'] as String,
        verifiedBy: json['verified_by'] as String?,
        createdAt: _dt(json['created_at']),
        updatedAt: _dt(json['updated_at']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'description': description,
        'phone': phone,
        'email': email,
        'website': website,
        'address_line1': addressLine1,
        'address_line2': addressLine2,
        'city': city,
        'state': state,
        'country': country,
        'pincode': pincode,
        'latitude': latitude,
        'longitude': longitude,
        'google_maps_url': googleMapsUrl,
        'is_active': isActive,
        'verified': verified,
        'created_by': createdBy,
        'verified_by': verifiedBy,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
      };
}