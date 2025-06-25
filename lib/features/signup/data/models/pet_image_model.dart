import 'package:dummy/features/signup/domain/entities/pet_image.dart';

class PetImageModel extends PetImage {
  const PetImageModel({
    required super.id,
    required super.pet_image,
  });

  factory PetImageModel.fromJson(Map<String, dynamic> json) {
    return PetImageModel(
      id: json['id'] as int,
      pet_image: json['pet_image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pet_image': pet_image,
    };
  }
 }