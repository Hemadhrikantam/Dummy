import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';

class BreedModel extends Breed {
  const BreedModel({required super.id, required super.petType, required super.breed});

  factory BreedModel.fromMap(JsonMap map) {
    return BreedModel(
      id: map['id'] ?? 0,
      petType: map['pet_type'] ?? '',
      breed: map['breed'] ?? '',
    );
  }
}