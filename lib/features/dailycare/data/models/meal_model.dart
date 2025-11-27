import '../../domain/entities/meal.dart';

class MediaItemModel extends MediaItem {
  const MediaItemModel({
    super.id,
    super.petId,
    super.entityType,
    super.entityId,
    super.uploadedBy,
    super.fileUrl,
    super.fileType,
    super.fileSize,
    super.mediaCaption,
    super.sortOrder,
    super.isCover,
    super.isDeleted,
    super.createdAt,
    super.updatedAt,
  });

  factory MediaItemModel.fromJson(Map<String, dynamic> json) {
    bool? _parseBool(dynamic v) {
      if (v == null) return null;
      if (v is bool) return v;
      final s = v.toString().toLowerCase();
      if (s == 'true') return true;
      if (s == 'false') return false;
      return null;
    }

    int? _parseInt(dynamic v) {
      if (v == null) return null;
      if (v is int) return v;
      return int.tryParse(v.toString());
    }

    DateTime? _parseDate(dynamic v) {
      if (v == null) return null;
      return DateTime.tryParse(v.toString());
    }

    String? _clean(dynamic v) {
      final s = (v ?? '').toString().trim();
      if (s.isEmpty) return null;
      return s.replaceAll('`', '');
    }

    return MediaItemModel(
      id: _clean(json['id']),
      petId: _clean(json['pet_id']),
      entityType: _clean(json['entity_type']),
      entityId: _clean(json['entity_id']),
      uploadedBy: _clean(json['uploaded_by']),
      fileUrl: _clean(json['file_url']),
      fileType: _clean(json['file_type']),
      fileSize: _clean(json['file_size']),
      mediaCaption: _clean(json['media_caption']),
      sortOrder: _parseInt(json['sort_order']),
      isCover: _parseBool(json['is_cover']),
      isDeleted: _parseBool(json['is_deleted']),
      createdAt: _parseDate(json['created_at']),
      updatedAt: _parseDate(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pet_id': petId,
      'entity_type': entityType,
      'entity_id': entityId,
      'uploaded_by': uploadedBy,
      'file_url': fileUrl,
      'file_type': fileType,
      'file_size': fileSize,
      'media_caption': mediaCaption,
      'sort_order': sortOrder,
      'is_cover': isCover,
      'is_deleted': isDeleted,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}

class PetMealModel extends PetMeal {
  const PetMealModel({
    required super.id,
    required super.date,
    required super.timeOfMeal,
    required super.mealType,
    required super.notes,
    required super.media,
    required super.pet,
    super.mealTypeId,
    super.mealTypeName,
    super.createdById,
    super.createdAt,
    super.updatedAt,
  });

  factory PetMealModel.fromJson(Map<String, dynamic> json) {
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

    return PetMealModel(
      id: (json['id'] ?? json['meal_id'] ?? '').toString(),
      date: (json['meal_date'] ?? json['date'] ?? '').toString(),
      timeOfMeal: (json['meal_time'] ?? json['time_of_meal'] ?? '').toString(),
      mealType:
          (json['meal_type'] ??
                  json['meal_type_name'] ??
                  json['meal_type_id'] ??
                  '')
              .toString(),
      mealTypeId:
          (json['meal_type_id'] ?? '').toString().isEmpty
              ? null
              : (json['meal_type_id'] ?? '').toString(),
      mealTypeName:
          (json['meal_type_name'] ?? '').toString().isEmpty
              ? null
              : (json['meal_type_name'] ?? '').toString(),
      createdById:
          (json['created_by_id'] ?? '').toString().isEmpty
              ? null
              : (json['created_by_id'] ?? '').toString(),
      notes: (json['notes'] ?? '').toString(),
      media: mediaList,
      pet: (json['pet'] ?? json['pet_id'] ?? '').toString(),
      createdAt: _parseDate(json['created_at']),
      updatedAt: _parseDate(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'meal_date': date,
      'meal_time': timeOfMeal,
      'meal_type': mealType,
      'meal_type_id': mealTypeId,
      'meal_type_name': mealTypeName,
      'notes': notes,
      'created_by_id': createdById,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
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
      'pet': pet,
    };
  }
}
