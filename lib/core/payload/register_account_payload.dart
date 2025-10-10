import 'package:equatable/equatable.dart';
import '../utils/type_def.dart';
import 'payload.dart';

class RegisterAccountPayload extends Equatable implements Payload {
  const RegisterAccountPayload({
    required this.mobileNumber,
    required this.petName,
    required this.gender,
    required this.petType,
    required this.breedId,
    required this.dob,
    required this.weightValue,
    required this.weightUnit,
    required this.personalityTags,
    required this.imageFile,
    required this.deviceId,
    required this.pushToken,
    required this.platform,
  });

  final String mobileNumber;
  final String gender;
  final String petName;
  final String petType;
  final String breedId;
  final String dob;
  final num weightValue;
  final String weightUnit;
  final List<String> personalityTags;
  final String imageFile;
  final String deviceId;
  final String pushToken;
  final String platform;

  @override
  List<Object?> get props => [
    mobileNumber,
    gender,
    petName,
    petType,
    breedId,
    dob,
    weightValue,
    weightUnit,
    personalityTags,
    imageFile,
    deviceId,
    pushToken,
    platform,
  ];

  @override
  JsonMap toMap() => {
    "mobile_number": mobileNumber,
    "gender": gender,
    "pet_name": petName,
    "pet_type": petType,
    "breed_id": breedId,
    "dob": dob,
    "weight": {"value": weightValue, "unit": weightUnit},
    "personality_tags": personalityTags,
    "image_file": imageFile,
    "device_id": deviceId,
    "push_token": pushToken,
    "platform": platform,
  };
}
