import 'package:equatable/equatable.dart';

class CountListing extends Equatable {
  final int pets_listed;
  final int active_listings;
  final int total_adoptions;
  final List<Listing> list;

  const CountListing({
    this.list = const [],
    required this.pets_listed,
    required this.active_listings,
    required this.total_adoptions,
  });

  @override
  List<Object?> get props => [
    pets_listed,
    active_listings,
    total_adoptions,
    list,
  ];
}

class Listing extends Equatable {
  final String id;
  final String petId;
  final String description;
  final String? adoptionFee;
  final String status;
  final DateTime? createdAt;
  final String petName;
  final String petType;
  final DateTime? petDob;
  final String? weightValue;
  final String? weightUnit;
  final String? imageUrl;
  final String breedName;
  final String accountName;
  final String accountType;
  final String listedByName;
  final String? age;
  final List<String> personalityTags;

  const Listing({
    required this.id,
    required this.petId,
    required this.description,
    this.adoptionFee,
    required this.status,
    this.createdAt,
    required this.petName,
    required this.petType,
    this.petDob,
    this.weightValue,
    this.weightUnit,
    this.imageUrl,
    required this.breedName,
    required this.accountName,
    required this.accountType,
    required this.listedByName,
    this.age,
    this.personalityTags = const [],
  });

  @override
  List<Object?> get props => [
    id,
    petId,
    description,
    adoptionFee,
    status,
    createdAt,
    petName,
    petType,
    petDob,
    weightValue,
    weightUnit,
    imageUrl,
    breedName,
    accountName,
    accountType,
    listedByName,
    age,
    personalityTags,
  ];
}
