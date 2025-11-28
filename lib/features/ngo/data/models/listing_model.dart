import 'package:dummy/features/ngo/domain/entities/listing.dart';

class CountListingModel extends CountListing {
  const CountListingModel({
    super.list = const [],
    required super.pets_listed,
    required super.active_listings,
    required super.total_adoptions,
  });

  factory CountListingModel.fromMap(Map<String, dynamic> map) {
    return CountListingModel(
      pets_listed:
          int.tryParse(
            map['meta']['summary']['pets_listed'] as String? ?? '0',
          ) ??
          0,
      active_listings:
          int.tryParse(
            map['meta']['summary']['active_listings'] as String? ?? '0',
          ) ??
          0,
      total_adoptions:
          int.tryParse(
            map['meta']['summary']['total_adoptions'] as String? ?? '0',
          ) ??
          0,
      list:
          (map['data'] as List<dynamic>?)
              ?.map((e) => ListingModel.fromMap(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
  }
}

class ListingModel extends Listing {
  const ListingModel({
    required super.id,
    required super.petId,
    required super.description,
    super.adoptionFee,
    required super.status,
    super.createdAt,
    required super.petName,
    required super.petType,
    super.petDob,
    super.weightValue,
    super.weightUnit,
    super.imageUrl,
    required super.breedName,
    required super.accountName,
    required super.accountType,
    required super.listedByName,
    super.age,
    super.personalityTags = const [],
  });

  factory ListingModel.fromMap(Map<String, dynamic> map) {
    return ListingModel(
      id: map['id'] as String? ?? '',
      petId: map['pet_id'] as String? ?? '',
      description: map['description'] as String? ?? '',
      adoptionFee: map['adoption_fee']?.toString(),
      status: map['status'] as String? ?? '',
      createdAt:
          (map['created_at'] != null)
              ? DateTime.tryParse(map['created_at'] as String)
              : null,
      petName: map['pet_name'] as String? ?? '',
      petType: map['pet_type'] as String? ?? '',
      petDob:
          (map['pet_dob'] != null)
              ? DateTime.tryParse(map['pet_dob'] as String)
              : null,
      weightValue: map['weight_value']?.toString(),
      weightUnit: map['weight_unit'] as String?,
      imageUrl: map['image_url'] as String?,
      breedName: map['breed_name'] as String? ?? '',
      accountName: map['account_name'] as String? ?? '',
      accountType: map['account_type'] as String? ?? '',
      listedByName: map['listed_by_name'] as String? ?? '',
      age: map['age']?.toString(),
      personalityTags:
          (map['personality_tags'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .where((s) => s.isNotEmpty)
              .toList() ??
          const [],
    );
  }
}
