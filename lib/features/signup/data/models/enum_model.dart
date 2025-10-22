import 'package:dummy/features/signup/domain/entities/breed.dart';
import 'package:dummy/features/signup/domain/entities/diary_event_time.dart';
import 'package:dummy/features/signup/domain/entities/frequency_type.dart';
import 'package:dummy/features/signup/domain/entities/medication_timeslot.dart';
import 'package:dummy/features/signup/domain/entities/personality_tag.dart';
import 'package:dummy/features/signup/domain/entities/dosage_type.dart';
import 'package:dummy/features/signup/domain/entities/meal_type.dart';
import 'package:dummy/features/signup/domain/entities/grooming_type.dart';
import 'package:dummy/features/signup/domain/entities/expense_category.dart';
import 'package:equatable/equatable.dart';

class EnumModel extends Equatable {
  final List<Breed> breeds;
  final List<PersonalityTag> personalityTags;
  final List<FrequencyType> frequencyTypes;
  final List<MedicationTimeslot> medicationTimeslots;
  final List<DiaryEventType> diaryEventTypes;
  final List<DosageType> dosageTypes;
  final List<MealType> mealTypes;
  final List<GroomingType> groomingTypes;
  final List<ExpenseCategory> expenseCategories;

  const EnumModel({
    required this.breeds,
    required this.personalityTags,
    required this.frequencyTypes,
    required this.medicationTimeslots,
    required this.diaryEventTypes,
    this.dosageTypes = const [],
    this.mealTypes = const [],
    this.groomingTypes = const [],
    this.expenseCategories = const [],
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
      dosageTypes:
          (data['dosageTypes'] as List<dynamic>?)
              ?.map((e) => DosageType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mealTypes:
          (data['mealTypes'] as List<dynamic>?)
              ?.map((e) => MealType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      groomingTypes:
          (data['groomingTypes'] as List<dynamic>?)
              ?.map((e) => GroomingType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      expenseCategories:
          (data['expenseCategories'] as List<dynamic>?)
              ?.map((e) => ExpenseCategory.fromJson(e as Map<String, dynamic>))
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
    dosageTypes,
    mealTypes,
    groomingTypes,
    expenseCategories,
  ];
}
