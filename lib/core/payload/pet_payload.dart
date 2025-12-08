import 'package:dummy/core/utils/type_def.dart';
import 'package:equatable/equatable.dart';
import 'package:dummy/core/payload/payload.dart';

enum OwnershipType { owned, adoption_listing }

class PetPayload extends Equatable implements Payload {
  const PetPayload({
    required this.name,
    required this.type,
    required this.breedId,
    this.gender,
    this.dob,
    this.image_url,
    this.pet_id,
    this.weight = const PetWeightPayload(),
    this.personalityTags = const <String>[],
    required this.ownership_type,
  });

  final String name;
  final String type;
  final String breedId;
  final String? gender;
  final String? image_url;
  final String? pet_id;
  final DateTime? dob;
  final PetWeightPayload weight;
  final List<String> personalityTags;
  final String? ownership_type;

  @override
  List<Object?> get props => [
    pet_id,
    name,
    type,
    breedId,
    gender,
    image_url,
    dob,
    weight,
    personalityTags,
    ownership_type,
  ];

  @override
  JsonMap toMap() => {
    if (pet_id != null) 'pet_id': pet_id,
    'name': name,
    'type': type.toLowerCase(),
    'gender': gender,
    'breed_id': breedId,
    'image_url': image_url,
    'dob': dob != null ? dob!.toIso8601String() : '',
    'weight': weight.toMap(),
    'personality_tags': personalityTags,
    'ownership_type ': ownership_type,
  };
}

class PetWeightPayload extends Equatable {
  const PetWeightPayload({this.value = '', this.unit = ''});

  final String value;
  final String unit;

  JsonMap toMap() => {'value': value, 'unit': unit};

  @override
  List<Object?> get props => [value, unit];
}
