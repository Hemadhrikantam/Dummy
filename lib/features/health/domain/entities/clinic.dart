import 'package:equatable/equatable.dart';

class Clinic extends Equatable {
  const Clinic({
    required this.id,
    required this.name,
    required this.placeType,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.businessStatus,
    required this.isOpenNow,
    this.rating,
    this.userRatingsTotal,
    this.iconUrl,
    this.photoReference,
    required this.createdAt,
    required this.updatedAt,
    this.distance,
  });

  final String id;
  final String name;

  /// veterinary_care, pet_store
  final String placeType;

  /// Google "vicinity"
  final String address;

  final double latitude;
  final double longitude;

  final String businessStatus; // OPERATIONAL
  final bool isOpenNow;

  final double? rating;
  final int? userRatingsTotal;

  final String? iconUrl;
  final String? photoReference;

  final DateTime createdAt;
  final DateTime updatedAt;

  final double? distance;

  @override
  List<Object?> get props => [
    id,
    name,
    placeType,
    address,
    latitude,
    longitude,
    businessStatus,
    isOpenNow,
    rating,
    userRatingsTotal,
    iconUrl,
    photoReference,
    createdAt,
    updatedAt,
    distance,
  ];
}
