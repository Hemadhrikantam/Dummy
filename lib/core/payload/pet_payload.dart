import 'package:dummy/core/utils/type_def.dart';
import 'package:equatable/equatable.dart';
import 'package:dummy/core/payload/payload.dart';

class PetPayload extends Equatable implements Payload {
  const PetPayload({
    required this.name,
    required this.type, // e.g. "dog" | "cat"
    required this.breedId,
    this.dob, // optional; if null we send ""
    this.pet_id, // optional; if null we send ""
    this.weight = const PetWeightPayload(), // defaults to empty strings
    this.personalityTags = const <String>[],
  });

  final String name;
  final String type; // consider validating "dog"/"cat" upstream if needed
  final String breedId;
  final String? pet_id; // optional
  final DateTime? dob; // optional
  final PetWeightPayload weight;
  final List<String> personalityTags;

  @override
  List<Object?> get props => [
    pet_id,
    name,
    type,
    breedId,
    dob,
    weight,
    personalityTags,
  ];

  @override
  JsonMap toMap() => {
    if (pet_id != null) 'pet_id': pet_id,
    'name': name,
    'type': type,
    'breed_id': breedId,
    // API sample shows empty string when dob is absent
    'dob': dob != null ? dob!.toIso8601String() : '',
    'weight': weight.toMap(),
    'personality_tags': personalityTags,
  };

  /// Optional helper to build from loose inputs (e.g., text fields)
  factory PetPayload.loose({
    required String name,
    required String type,
    required String breedId,
    String? dobText, // "YYYY-MM-DD" or ""
    String? weightValue,
    String? weightUnit,
    List<String>? personalityTags,
  }) {
    DateTime? parsedDob;
    if (dobText != null && dobText.trim().isNotEmpty) {
      parsedDob = DateTime.parse(dobText.trim());
    }
    return PetPayload(
      name: name.trim(),
      type: type.trim(),
      breedId: breedId.trim(),
      dob: parsedDob,
      weight: PetWeightPayload(
        value: (weightValue ?? '').trim(),
        unit: (weightUnit ?? '').trim(),
      ),
      personalityTags: personalityTags ?? const [],
    );
  }
}

class PetWeightPayload extends Equatable {
  const PetWeightPayload({
    this.value = '', // keep as string to match sample (can be "")
    this.unit = '', // e.g. "kg", "lb" or ""
  });

  final String value;
  final String unit;

  JsonMap toMap() => {'value': value, 'unit': unit};

  @override
  List<Object?> get props => [value, unit];
}
