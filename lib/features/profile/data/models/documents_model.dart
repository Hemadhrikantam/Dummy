import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';

class DocumentsModel extends Documents {
  const DocumentsModel({
    required super.id,
    required super.petId,
    required super.uploadedBy,
    required super.fileUrl,
    required super.fileName,
    required super.fileSize,
    super.notes,
    required super.isDeleted,
    required super.createdAt,
    required super.updatedAt,
  });

  factory DocumentsModel.fromMap(JsonMap map) {
    String? clean(dynamic v) {
      if (v == null) return null;
      final s = v.toString().trim();
      if (s.isEmpty) return null;
      return s.replaceAll('`', '');
    }

    DateTime parseDateTime(dynamic v) {
      if (v == null) return DateTime.now();
      if (v is DateTime) return v;
      return DateTime.tryParse(v.toString()) ?? DateTime.now();
    }

    int parseInt(dynamic v) {
      if (v == null) return 0;
      if (v is int) return v;
      if (v is double) return v.toInt();
      return int.tryParse(v.toString()) ?? 0;
    }

    bool parseBool(dynamic v) {
      if (v == null) return false;
      if (v is bool) return v;
      final s = v.toString().toLowerCase();
      return s == 'true' || s == '1';
    }

    return DocumentsModel(
      id: clean(map['id']) ?? '',
      petId: clean(map['pet_id']) ?? '',
      uploadedBy: clean(map['uploaded_by']) ?? '',
      fileUrl: clean(map['file_url']) ?? '',
      fileName: clean(map['file_name']) ?? '',
      fileSize: parseInt(map['file_size']),
      notes: clean(map['notes']),
      isDeleted: parseBool(map['is_deleted']),
      createdAt: parseDateTime(map['created_at']),
      updatedAt: parseDateTime(map['updated_at']),
    );
  }

  JsonMap toMap() {
    return {
      'id': id,
      'pet_id': petId,
      'uploaded_by': uploadedBy,
      'file_url': fileUrl,
      'file_name': fileName,
      'file_size': fileSize,
      'notes': notes,
      'is_deleted': isDeleted,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
