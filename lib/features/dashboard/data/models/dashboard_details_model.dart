import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';

class DashboardDetailsModel extends DashboardPetDetails {
  const DashboardDetailsModel({
    required super.id,
    required super.name,
    required super.type,
    required super.breedId,
    required super.breedName,
    required super.gender,
    required super.dob,
    required super.weightValue,
    required super.weightUnit,
    super.imageUrl,
    required super.createdAt,
    required super.updatedAt,
    required super.personalityTags,
  });

  factory DashboardDetailsModel.fromMap(JsonMap map) {
    return DashboardDetailsModel(
      id: map['id'] as String? ?? '',
      name: map['name'] as String? ?? '',
      type: map['type'] as String? ?? '',
      breedId: map['breed_id'] as String? ?? '',
      breedName: map['breed_name'] as String? ?? '',
      dob: map['dob'] as String? ?? '',
      gender: map['gender'] as String? ?? '',
      weightValue: map['weight_value'] as String? ?? '',
      weightUnit: map['weight_unit'] as String? ?? '',
      imageUrl: map['image_url'] as String?,
      createdAt: map['created_at'] as String? ?? '',
      updatedAt: map['updated_at'] as String? ?? '',
      personalityTags:
          (map['personality_tags'] as List<dynamic>? ?? [])
              .map((e) => e.toString())
              .toList(),
    );
  }
}
