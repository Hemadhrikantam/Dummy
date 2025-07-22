import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/data/models/breed_model.dart';
import 'package:dummy/features/dashboard/data/models/personality_tag_model.dart';
import 'package:dummy/features/dashboard/data/models/pet_image_model.dart';

class DashboardDetailsModel extends DashboardPetDetails {
  const DashboardDetailsModel({
    required super.id,
    required super.petName,
    required super.dob,
    required super.petWeight,
    required super.breed,
    required super.personalityTag,
    required super.petType,
    required super.trackActivity,
    required super.petImage, 
    required super.gender,
  });

  factory DashboardDetailsModel.fromMap(JsonMap map) {
    return DashboardDetailsModel(
      id: map['id'] as int? ?? 0,
      petName: map['pet_name'] as String? ?? '',
      petType: map['pet_type'] as String? ?? '',
      dob: map['dob'] as String? ?? '',
      gender: map['gender'] as String? ??'',
      petWeight: (map['pet_weight'] as double?) ?? 0,
      trackActivity: map['track_activity'] as bool? ?? false,
      petImage: PetImageModel.fromMap(map['pet_image'] ?? {}),
      breed: BreedModel.fromMap(map['breed'] ?? {}),
      personalityTag: (map['personality_tag'] as List<dynamic>? ?? [])
          .map((e) => PersonalityTagModel.fromMap(e))
          .toList(),
    );
  }
}
