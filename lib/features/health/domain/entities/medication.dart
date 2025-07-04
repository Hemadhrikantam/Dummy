import 'package:equatable/equatable.dart';

class PetMedication extends Equatable {
  final int id;
  final bool reminder;
  final String tabletName;
  final String company;
  final DateTime startDate;
  final DateTime endDate;
  final double dosage;
  final String dosageUnit;
  final String morningTime;
  final String afternoonTime;
  final String nightTime;
  final String note;
  final String media;
  final int pet;
  final int frequency;

  const PetMedication({
    required this.dosage,
    required this.dosageUnit,
    required this.morningTime,
    required this.afternoonTime,
    required this.nightTime,
    required this.note,
    required this.media,
    required this.pet,
    required this.frequency,
    required this.id,
    required this.reminder,
    required this.tabletName,
    required this.company,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object?> get props => [
    id,
    reminder,
    tabletName,
    company,
    dosage,
    dosageUnit,
    morningTime,
    afternoonTime,
    nightTime,
    startDate,
    endDate,
    note,
    media,
    pet,
    frequency,
  ];
}
