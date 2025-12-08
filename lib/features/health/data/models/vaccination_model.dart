// data/models/pet_vaccination_model.dart
import '../../domain/entities/vaccination.dart';

class PetVaccinationModel extends PetVaccination {
  const PetVaccinationModel({
    required super.companyName,
    required super.timeFrequencyId,
    super.timeFrequencyName,
    super.dateAdministered,
    required super.id,
    required super.petId,
    required super.name,
    required super.frequencyId,
    super.frequencyName,
    super.dueDate,
    required super.status,
    super.notes = "",
    super.imageUrl,
    required super.isActive,
    required super.createdBy,
    required super.createdAt,
    required super.updatedAt,
    super.reminderId,
    super.reminderDate,
    super.timezone,
    super.reminderEnabled,
  });

  factory PetVaccinationModel.fromJson(Map<String, dynamic> json) {
    DateTime? dt(dynamic v) =>
        v == null || (v is String && v.isEmpty)
            ? null
            : DateTime.parse(v as String);

    return PetVaccinationModel(
      companyName: (json['company_name'] ?? '') as String,
      timeFrequencyId: (json['time_frequency_id'] ?? '') as String,
      timeFrequencyName: json['time_frequency_name'] as String?,
      dateAdministered: dt(json['date_administered']),
      id: json['id'] as String,
      petId: json['pet_id'] as String,
      name: json['name'] as String,
      frequencyId: json['frequency_id'] as String,
      frequencyName: json['frequency_name'] as String?,
      dueDate: dt(json['due_date']),
      status: json['status'] as String,
      notes: (json['notes'] ?? '') as String,
      imageUrl: json['image_url'] as String?,
      isActive: (json['is_active'] as bool?) ?? true,
      createdBy: json['created_by'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      reminderId: json['reminder_id'] as String?,
      reminderDate: dt(json['reminder_date']),
      timezone: json['timezone'] as String?,
      reminderEnabled: json['reminder_enabled'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    String? iso(DateTime? d) => d?.toIso8601String();

    return {
      'id': id,
      'pet_id': petId,
      'name': name,
      'company_name': companyName,
      'frequency_id': frequencyId,
      if (frequencyName != null) 'frequency_name': frequencyName,
      'time_frequency_id': timeFrequencyId,
      if (timeFrequencyName != null) 'time_frequency_name': timeFrequencyName,
      'date_administered': iso(dateAdministered),
      'due_date': iso(dateAdministered),
      'status': status,
      'notes': notes,
      'image_url': imageUrl,
      'is_active': isActive,
      'created_by': createdBy,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'reminder_id': reminderId,
      'reminder_date': iso(reminderDate),
      'timezone': timezone,
      'reminder_enabled': reminderEnabled,
    };
  }

  PetVaccinationModel copyWith({
    String? id,
    String? petId,
    String? name,
    String? companyName,
    String? frequencyId,
    String? frequencyName,
    String? timeFrequencyId,
    String? timeFrequencyName,
    DateTime? dateAdministered,
    DateTime? dueDate,
    String? status,
    String? notes,
    String? imageUrl,
    bool? isActive,
    String? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? reminderId,
    DateTime? reminderDate,
    String? timezone,
    bool? reminderEnabled,
  }) {
    return PetVaccinationModel(
      companyName: companyName ?? this.companyName,
      timeFrequencyId: timeFrequencyId ?? this.timeFrequencyId,
      timeFrequencyName: timeFrequencyName ?? this.timeFrequencyName,
      dateAdministered: dateAdministered ?? this.dateAdministered,
      id: id ?? this.id,
      petId: petId ?? this.petId,
      name: name ?? this.name,
      frequencyId: frequencyId ?? this.frequencyId,
      frequencyName: frequencyName ?? this.frequencyName,
      dueDate: dueDate ?? this.dueDate,
      status: status ?? this.status,
      notes: notes ?? this.notes,
      imageUrl: imageUrl ?? this.imageUrl,
      isActive: isActive ?? this.isActive,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      reminderId: reminderId ?? this.reminderId,
      reminderDate: reminderDate ?? this.reminderDate,
      timezone: timezone ?? this.timezone,
      reminderEnabled: reminderEnabled ?? this.reminderEnabled,
    );
  }
}
