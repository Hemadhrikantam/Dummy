import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';

class PersonalityTagModel extends PersonalityTag {
  const PersonalityTagModel({required super.id, required super.personality});

  factory PersonalityTagModel.fromMap(JsonMap map) {
    return PersonalityTagModel(
      id: map['id'] ?? 0,
      personality: map['personality_tag'] ?? '',
    );
  }
}