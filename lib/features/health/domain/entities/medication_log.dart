import 'package:equatable/equatable.dart';

class MedicationLog extends Equatable {
  final DateTime date;
  final String timeslotId;
  final String timeslotName;
  final String scheduleId;
  final String status; // "missed", "taken", "skipped", etc.
  final DateTime? administeredAt;
  final String? administeredBy;
  final String? notes;

  const MedicationLog({
    required this.date,
    required this.timeslotId,
    required this.timeslotName,
    required this.scheduleId,
    required this.status,
    this.administeredAt,
    this.administeredBy,
    this.notes,
  });

  @override
  List<Object?> get props => [
    date,
    timeslotId,
    timeslotName,
    scheduleId,
    status,
    administeredAt,
    administeredBy,
    notes,
  ];
}