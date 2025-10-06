import 'package:dummy/features/signup/domain/entities/breed.dart';
import 'package:dummy/features/signup/domain/entities/diary_event_time.dart';
import 'package:dummy/features/signup/domain/entities/frequency_type.dart';
import 'package:dummy/features/signup/domain/entities/medication_timeslot.dart';
import 'package:dummy/features/signup/domain/entities/personality_tag.dart';
import 'package:equatable/equatable.dart';

class EnumModel extends Equatable {
  final List<Breed> breeds;
  final List<PersonalityTag> personalityTags;
  final List<FrequencyType> frequencyTypes;
  final List<MedicationTimeslot> medicationTimeslots;
  final List<DiaryEventType> diaryEventTypes;

  const EnumModel({
    required this.breeds,
    required this.personalityTags,
    required this.frequencyTypes,
    required this.medicationTimeslots,
    required this.diaryEventTypes,
  });

  factory EnumModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] ?? {};

    return EnumModel(
      breeds:
          (data['breeds'] as List<dynamic>?)
              ?.map((e) => Breed.fromJson(e))
              .toList() ??
          [],
      personalityTags:
          (data['personalityTags'] as List<dynamic>?)
              ?.map((e) => PersonalityTag.fromJson(e))
              .toList() ??
          [],
      frequencyTypes:
          (data['frequencyTypes'] as List<dynamic>?)
              ?.map((e) => FrequencyType.fromJson(e))
              .toList() ??
          [],
      medicationTimeslots:
          (data['medicationTimeslots'] as List<dynamic>?)
              ?.map((e) => MedicationTimeslot.fromJson(e))
              .toList() ??
          [],
      diaryEventTypes:
          (data['diaryEventTypes'] as List<dynamic>?)
              ?.map((e) => DiaryEventType.fromJson(e))
              .toList() ??
          [],
    );
  }

  @override
  List<Object?> get props => [
    breeds,
    personalityTags,
    frequencyTypes,
    medicationTimeslots,
    diaryEventTypes,
  ];
}
