import '../../domain/entities/clinic.dart';

class ClinicModel extends Clinic {
  const ClinicModel({
    required super.id,
    required super.name,
    required super.placeType,
    required super.address,
    required super.latitude,
    required super.longitude,
    required super.businessStatus,
    required super.isOpenNow,
    super.rating,
    super.userRatingsTotal,
    super.iconUrl,
    super.photoReference,
    required super.createdAt,
    required super.updatedAt,
    super.distance,
  });

  factory ClinicModel.fromJson(Map<String, dynamic> json) {
    return ClinicModel(
      id: json['id'],
      name: json['name'],
      placeType: json['placeType'],
      address: json['vicinity'],
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      businessStatus: json['businessStatus'],
      isOpenNow: json['isOpenNow'] ?? false,
      rating: (json['rating'] as num?)?.toDouble(),
      userRatingsTotal: json['userRatingsTotal'],
      iconUrl: json['iconUrl'],
      photoReference: json['photoReference'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      distance: (json['distance'] as num?)?.toDouble(),
    );
  }
}
