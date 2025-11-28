import '../../domain/entities/medication_log.dart';

class MedicationLogModel extends MedicationLog {
  const MedicationLogModel({
    required super.date,
    required super.timeslotId,
    required super.timeslotName,
    required super.scheduleId,
    required super.status,
    super.administeredAt,
    super.administeredBy,
    super.notes,
  });

  static DateTime? _dt(dynamic v) =>
      (v == null || (v is String && v.isEmpty))
          ? null
          : DateTime.parse(v as String);

  static DateTime _parseDate(dynamic v) {
    if (v is String) {
      // Handle date-only format like "2018-07-19"
      if (v.length == 10) {
        return DateTime.parse(v);
      }
      return DateTime.parse(v);
    }
    return DateTime.parse(v.toString());
  }

  factory MedicationLogModel.fromJson(Map<String, dynamic> json) {
    return MedicationLogModel(
      date: _parseDate(json['date']),
      timeslotId: json['timeslot_id'] as String,
      timeslotName: json['timeslot_name'] as String,
      scheduleId: json['schedule_id'] as String,
      status: json['status'] as String,
      administeredAt: _dt(json['administered_at']),
      administeredBy: json['administered_by'] as String?,
      notes: json['notes'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    String? iso(DateTime? d) => d?.toIso8601String();
    String dateOnly(DateTime d) => d.toIso8601String().split('T')[0];

    return {
      'date': dateOnly(date),
      'timeslot_id': timeslotId,
      'timeslot_name': timeslotName,
      'schedule_id': scheduleId,
      'status': status,
      'administered_at': iso(administeredAt),
      'administered_by': administeredBy,
      'notes': notes,
    };
  }

  factory MedicationLogModel.fromEntity(MedicationLog entity) {
    return MedicationLogModel(
      date: entity.date,
      timeslotId: entity.timeslotId,
      timeslotName: entity.timeslotName,
      scheduleId: entity.scheduleId,
      status: entity.status,
      administeredAt: entity.administeredAt,
      administeredBy: entity.administeredBy,
      notes: entity.notes,
    );
  }
}