import '../../domain/entities/grooming.dart';
import 'meal_model.dart';
import '../../domain/entities/meal.dart';

class PetGroomingModel extends PetGrooming {
  const PetGroomingModel({
    required super.id,
    required super.petId,
    required super.date,
    required super.groomingType,
    required super.media,
    super.notes,
    super.groomingTypeId,
    super.groomingTypeName,
    super.createdById,
    super.createdAt,
    super.updatedAt,
  });

  factory PetGroomingModel.fromJson(Map<String, dynamic> json) {
    final dynamic mediaField = json['media'];
    List<MediaItem> mediaList = const [];

    if (mediaField is List) {
      mediaList = mediaField
          .map((e) {
            if (e is Map<String, dynamic>) return MediaItemModel.fromJson(e);
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

    DateTime? _parseDate(dynamic v) => v == null ? null : DateTime.tryParse(v.toString());
    String _cleanStr(dynamic v) => (v ?? '').toString().trim().replaceAll('`', '');

    return PetGroomingModel(
      id: _cleanStr(json['id']),
      petId: _cleanStr(json['pet_id'] ?? json['pet']),
      date: _cleanStr(json['grooming_date'] ?? json['date']),
      groomingType: _cleanStr(json['grooming_type_name'] ?? json['grooming_type'] ?? json['grooming_type_id']),
      groomingTypeId: _cleanStr(json['grooming_type_id']).isEmpty ? null : _cleanStr(json['grooming_type_id']),
      groomingTypeName: _cleanStr(json['grooming_type_name']).isEmpty ? null : _cleanStr(json['grooming_type_name']),
      createdById: _cleanStr(json['created_by_id']).isEmpty ? null : _cleanStr(json['created_by_id']),
      notes: _cleanStr(json['notes']).isEmpty ? null : _cleanStr(json['notes']),
      media: mediaList,
      createdAt: _parseDate(json['created_at']),
      updatedAt: _parseDate(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pet_id': petId,
      'grooming_date': date,
      'grooming_type_id': groomingTypeId ?? groomingType,
      'grooming_type_name': groomingTypeName ?? groomingType,
      'notes': notes,
      'created_by_id': createdById,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'media': media
          .map((m) => (m is MediaItemModel)
              ? (m as MediaItemModel).toJson()
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
                ).toJson())
          .toList(),
    };
  }
}
