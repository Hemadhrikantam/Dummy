import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';

class MediaModel extends Media {
  const MediaModel({
    required super.id,
    required super.petId,
    required super.uploadedBy,
    required super.fileUrl,
    required super.fileType,
    required super.fileSize,
    super.notes,
    required super.eventTypeId,
    required super.isDeleted,
    required super.createdAt,
    required super.updatedAt,
    required super.eventTypeName,
    required super.isFavorited,
  });

  factory MediaModel.fromMap(JsonMap map) {
    // Helper function to clean strings (remove backticks and trim)
    String? clean(dynamic value) {
      if (value == null) return null;
      final str = value.toString().trim();
      if (str.isEmpty) return null;
      return str.replaceAll('`', '');
    }

    // Helper function to parse DateTime
    DateTime parseDateTime(dynamic value) {
      if (value == null) return DateTime.now();
      if (value is DateTime) return value;
      return DateTime.tryParse(value.toString()) ?? DateTime.now();
    }

    // Helper function to parse int
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is double) return value.toInt();
      return int.tryParse(value.toString()) ?? 0;
    }

    // Helper function to parse bool
    bool parseBool(dynamic value) {
      if (value == null) return false;
      if (value is bool) return value;
      final str = value.toString().toLowerCase();
      return str == 'true' || str == '1';
    }

    return MediaModel(
      id: clean(map['id']) ?? '',
      petId: clean(map['pet_id']) ?? '',
      uploadedBy: clean(map['uploaded_by']) ?? '',
      fileUrl: clean(map['file_url']) ?? '',
      fileType: clean(map['file_type']) ?? '',
      fileSize: parseInt(map['file_size']),
      notes: clean(map['notes']),
      eventTypeId: clean(map['event_type_id']) ?? '',
      isDeleted: parseBool(map['is_deleted']),
      createdAt: parseDateTime(map['created_at']),
      updatedAt: parseDateTime(map['updated_at']),
      eventTypeName: clean(map['event_type_name']) ?? '',
      isFavorited: parseBool(map['is_favorited']),
    );
  }

  JsonMap toMap() {
    return {
      'id': id,
      'pet_id': petId,
      'uploaded_by': uploadedBy,
      'file_url': fileUrl,
      'file_type': fileType,
      'file_size': fileSize,
      'notes': notes,
      'event_type_id': eventTypeId,
      'is_deleted': isDeleted,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'event_type_name': eventTypeName,
      'is_favorited': isFavorited,
    };
  }
}
