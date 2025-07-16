import 'package:equatable/equatable.dart';

import '../utils/type_def.dart';
import 'payload.dart';

class RegisterAccountPayload extends Equatable implements Payload {
  const RegisterAccountPayload({
    required this.petName,
    required this.petType,
    required this.dob,
    required this.petWeight,
    required this.petImage,
    required this.breed,
    required this.personalityTag,
    required this.gender,
    required this.latitude, 
    required this.longitude,
  });

  final String petName;
  final String petType;
  final String dob;
  final int petWeight;
  final int petImage;
  final int breed;
  final String gender;
  final List<int> personalityTag;
  final double latitude;
  final double longitude;

  @override
  List<Object?> get props => [
    petName,
    petType,
    dob,
    petWeight,
    petImage,
    breed,
    personalityTag,
    gender,
    latitude,
    longitude,
  ];

  @override
  JsonMap toMap() => {
    'pet_name': petName,
    'pet_type': petType,
    'dob': dob,
    'pet_weight': petWeight,
    'pet_image': petImage,
    'breed': breed,
    'gender' : gender,
    'personality_tag': personalityTag,
    'latitude':latitude,
    'longitude':longitude,
  };
}
