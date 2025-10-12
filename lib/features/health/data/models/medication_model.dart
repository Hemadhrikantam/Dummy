import '../../domain/entities/medication.dart';

class PetMedicationModel extends PetMedication {
  const PetMedicationModel({
    required super.id,
    required super.petId,
    required super.name,
    required super.company,
    required super.dosage,
    required super.frequencyId,
    super.frequencyName,
    required super.startDate,
    super.endDate,
    super.notes = "",
    super.imageUrl,
    required super.isActive,
    required super.createdBy,
    required super.createdAt,
    required super.updatedAt,
    super.timeslots = const [],
    super.reminder,
  });

  static DateTime? _dt(dynamic v) =>
      (v == null || (v is String && v.isEmpty))
          ? null
          : DateTime.parse(v as String);

  factory PetMedicationModel.fromJson(Map<String, dynamic> json) {
    final ts =
        (json['timeslots'] as List<dynamic>? ?? [])
            .map(
              (e) => _TimeslotModel.fromJson(e as Map<String, dynamic>).entity,
            )
            .toList();

    final remJson = json['reminder'] as Map<String, dynamic>?;
    final rem =
        remJson == null ? null : _ReminderModel.fromJson(remJson).entity;

    return PetMedicationModel(
      id: json['id'] as String,
      petId: json['pet_id'] as String,
      name: json['name'] as String,
      company: (json['company'] ?? '') as String,
      dosage: json['dosage'] as String,
      frequencyId: json['frequency_id'] as String,
      frequencyName: json['frequency_name'] as String?,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: _dt(json['end_date']),
      notes: (json['notes'] ?? '') as String,
      imageUrl: json['image_url'] as String?,
      isActive: (json['is_active'] as bool?) ?? true,
      createdBy: json['created_by'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      timeslots: ts,
      reminder: rem,
    );
  }

  Map<String, dynamic> toJson() {
    String? _iso(DateTime? d) => d?.toIso8601String();

    return {
      'id': id,
      'pet_id': petId,
      'name': name,
      'company': company,
      'dosage': dosage,
      'frequency_id': frequencyId,
      if (frequencyName != null) 'frequency_name': frequencyName,
      'start_date': startDate.toIso8601String(),
      'end_date': _iso(endDate),
      'notes': notes,
      'image_url': imageUrl,
      'is_active': isActive,
      'created_by': createdBy,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'timeslots':
          timeslots.map((t) => _TimeslotModel.fromEntity(t).toJson()).toList(),
      if (reminder != null)
        'reminder': _ReminderModel.fromEntity(reminder!).toJson(),
    };
  }
}

/* ---------- private mappers for nested types ---------- */

class _TimeslotModel {
  final MedicationTimeslot entity;
  const _TimeslotModel(this.entity);

  factory _TimeslotModel.fromJson(Map<String, dynamic> json) => _TimeslotModel(
    MedicationTimeslot(
      id: json['id'] as String,
      name: json['name'] as String,
      defaultTime: json['default_time'] as String,
      customTime: json['custom_time'] as String?,
    ),
  );

  factory _TimeslotModel.fromEntity(MedicationTimeslot e) => _TimeslotModel(e);

  Map<String, dynamic> toJson() => {
    'id': entity.id,
    'name': entity.name,
    'default_time': entity.defaultTime,
    'custom_time': entity.customTime,
  };
}

class _ReminderModel {
  final MedicationReminder entity;
  const _ReminderModel(this.entity);

  static DateTime? _dt(dynamic v) =>
      (v == null || (v is String && v.isEmpty))
          ? null
          : DateTime.parse(v as String);

  factory _ReminderModel.fromJson(Map<String, dynamic> json) => _ReminderModel(
    MedicationReminder(
      id: json['id'] as String,
      reminderDate: _dt(json['reminder_date']),
      timezone: json['timezone'] as String?,
      isEnabled: (json['is_enabled'] as bool?) ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    ),
  );

  factory _ReminderModel.fromEntity(MedicationReminder e) => _ReminderModel(e);

  Map<String, dynamic> toJson() => {
    'id': entity.id,
    'reminder_date': entity.reminderDate?.toIso8601String(),
    'timezone': entity.timezone,
    'is_enabled': entity.isEnabled,
    'created_at': entity.createdAt.toIso8601String(),
    'updated_at': entity.updatedAt.toIso8601String(),
  };
}
