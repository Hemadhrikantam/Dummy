import 'package:dummy/features/dailycare/domain/entities/meal.dart';

import '../../domain/entities/deworming.dart';
import 'meal_model.dart';

class PetDewormingModel extends PetDeworming {
  const PetDewormingModel({
    required super.id,
    required super.petId,
    required super.date,
    required super.productName,
    required super.dueDate,
    required super.media,
    super.notes,
    super.isActive,
    super.frequencyId,
    super.frequencyName,
    super.createdById,
    super.createdAt,
    super.updatedAt,
    super.reminderId,
    super.reminderDate,
    super.reminderTime,
    super.reminderTimezone,
    super.reminderEnabled,
    super.reminderCreatedBy,
    super.reminderCreatedAt,
    super.reminderUpdatedAt,
  });

  factory PetDewormingModel.fromJson(Map<String, dynamic> json) {
    final dynamic mediaField = json['media'];
    List<MediaItem> mediaList = const [];

    if (mediaField is List) {
      mediaList =
          mediaField
              .map((e) {
                if (e is Map<String, dynamic>)
                  return MediaItemModel.fromJson(e);
                if (e is String) return MediaItemModel(fileUrl: e);
                return null;
              })
              .whereType<MediaItem>()
              .toList();
    } else if (mediaField is Map<String, dynamic>) {
      mediaList = [MediaItemModel.fromJson(mediaField)];
    } else if (mediaField is String) {
      mediaList = [MediaItemModel(fileUrl: mediaField)];
    }

    DateTime? _parseDate(dynamic v) =>
        v == null ? null : DateTime.tryParse(v.toString());
    String _dateOnly(dynamic v) {
      final s = (v ?? '').toString();
      if (s.isEmpty) return '';
      final dt = DateTime.tryParse(s);
      return dt == null ? s : dt.toIso8601String().split('T').first;
    }

    final Map<String, dynamic>? reminder =
        (json['reminder'] is Map<String, dynamic>)
            ? json['reminder'] as Map<String, dynamic>
            : null;

    return PetDewormingModel(
      id: (json['id'] ?? '').toString(),
      petId: (json['pet_id'] ?? json['pet'] ?? '').toString(),
      date: _dateOnly(json['deworming_date'] ?? json['date']),
      productName: (json['product_name'] ?? '').toString(),
      dueDate: _dateOnly(json['due_date']),
      notes: json['notes'] as String?,
      isActive: json['is_active'] is bool ? json['is_active'] as bool : null,
      createdAt: _parseDate(json['created_at']),
      updatedAt: _parseDate(json['updated_at']),
      frequencyId:
          (json['frequency_id'] ?? '').toString().isEmpty
              ? null
              : (json['frequency_id'] ?? '').toString(),
      frequencyName:
          (json['frequency_name'] ?? '').toString().isEmpty
              ? null
              : (json['frequency_name'] ?? '').toString(),
      createdById:
          (json['created_by_id'] ?? '').toString().isEmpty
              ? null
              : (json['created_by_id'] ?? '').toString(),
      media: mediaList,
      reminderId:
          reminder == null
              ? null
              : (reminder['id'] ?? '').toString().isEmpty
              ? null
              : (reminder['id'] ?? '').toString(),
      reminderDate:
          reminder == null ? null : _parseDate(reminder['reminder_date']),
      reminderTime:
          reminder == null ? null : (reminder['reminder_time'] as String?),
      reminderTimezone:
          reminder == null ? null : (reminder['timezone'] as String?),
      reminderEnabled:
          reminder == null
              ? null
              : (reminder['is_enabled'] is bool
                  ? reminder['is_enabled'] as bool
                  : null),
      reminderCreatedBy:
          reminder == null
              ? null
              : (reminder['created_by'] ?? '').toString().isEmpty
              ? null
              : (reminder['created_by'] ?? '').toString(),
      reminderCreatedAt:
          reminder == null ? null : _parseDate(reminder['created_at']),
      reminderUpdatedAt:
          reminder == null ? null : _parseDate(reminder['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pet_id': petId,
      'deworming_date': date,
      'product_name': productName,
      'due_date': dueDate,
      'notes': notes,
      'is_active': isActive,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'frequency_id': frequencyId,
      'frequency_name': frequencyName,
      'created_by_id': createdById,
      'media':
          media
              .map(
                (m) =>
                    (m is MediaItemModel)
                        ? m.toJson()
                        : MediaItemModel(
                          id: m.id,
                          petId: m.petId,
                          entityType: m.entityType,
                          entityId: m.entityId,
                          uploadedBy: m.uploadedBy,
                          fileUrl: m.fileUrl,
                          fileType: m.fileType,
                          fileSize: m.fileSize,
                          mediaCaption: m.mediaCaption,
                          sortOrder: m.sortOrder,
                          isCover: m.isCover,
                          isDeleted: m.isDeleted,
                          createdAt: m.createdAt,
                          updatedAt: m.updatedAt,
                        ).toJson(),
              )
              .toList(),
      'reminder':
          (reminderId == null &&
                  reminderDate == null &&
                  reminderTime == null &&
                  reminderTimezone == null &&
                  reminderEnabled == null &&
                  reminderCreatedBy == null &&
                  reminderCreatedAt == null &&
                  reminderUpdatedAt == null)
              ? null
              : {
                if (reminderId != null) 'id': reminderId,
                'entity_type': 'deworming',
                if (petId.isNotEmpty) 'pet_id': petId,
                if (id.isNotEmpty) 'entity_id': id,
                if (reminderDate != null)
                  'reminder_date': reminderDate!.toIso8601String(),
                if (reminderTime != null) 'reminder_time': reminderTime,
                if (reminderTimezone != null) 'timezone': reminderTimezone,
                if (reminderEnabled != null) 'is_enabled': reminderEnabled,
                if (reminderCreatedBy != null) 'created_by': reminderCreatedBy,
                if (reminderCreatedAt != null)
                  'created_at': reminderCreatedAt!.toIso8601String(),
                if (reminderUpdatedAt != null)
                  'updated_at': reminderUpdatedAt!.toIso8601String(),
              },
    };
  }
}
