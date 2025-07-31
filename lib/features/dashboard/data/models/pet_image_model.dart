import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart'; // Correct path to PetImage

class PetImageModel extends PetImage {
  const PetImageModel({
    required super.id,
    required super.petImage,
  });

  factory PetImageModel.fromMap(JsonMap map) {
    return PetImageModel(
      id: map['id'] ?? 0,
      petImage: map['pet_image'] ?? '',
    );
  }
}
