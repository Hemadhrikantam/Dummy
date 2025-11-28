import '../../domain/entities/walk.dart';
import '../../domain/entities/meal.dart'; // reuse MediaItem

class PetWalkModel extends PetWalk {
  const PetWalkModel({
    required super.id,
    required super.petId,
    required super.walkDate,
    required super.durationMinutes,
    required super.location,
    required super.notes,
    required super.media,
    super.createdById,
    super.createdAt,
    super.updatedAt,
  });

  factory PetWalkModel.fromJson(Map<String, dynamic> json) {
    DateTime? parseDate(dynamic v) => v == null ? null : DateTime.tryParse(v.toString());

    List<MediaItem> parseMedia(dynamic mediaField) {
      if (mediaField is List) {
        return mediaField
            .map((e) {
              if (e is Map<String, dynamic>) {
                // Leverage MediaItemModel logic from meal_model if needed; inline parse here to avoid imports.
                String? clean(dynamic v) {
                  final s = (v ?? '').toString().trim();
                  if (s.isEmpty) return null;
                  return s.replaceAll('`', '');
                }
                bool? parseBool(dynamic v) {
                  if (v == null) return null;
                  if (v is bool) return v;
                  final s = v.toString().toLowerCase();
                  if (s == 'true') return true;
                  if (s == 'false') return false;
                  return null;
                }
                int? parseInt(dynamic v) {
                  if (v == null) return null;
                  if (v is int) return v;
                  return int.tryParse(v.toString());
                }
                return MediaItem(
                  id: clean(e['id']),
                  petId: clean(e['pet_id']),
                  entityType: clean(e['entity_type']),
                  entityId: clean(e['entity_id']),
                  uploadedBy: clean(e['uploaded_by']),
                  fileUrl: clean(e['file_url']),
                  fileType: clean(e['file_type']),
                  fileSize: clean(e['file_size']),
                  mediaCaption: clean(e['media_caption']),
                  sortOrder: parseInt(e['sort_order']),
                  isCover: parseBool(e['is_cover']),
                  isDeleted: parseBool(e['is_deleted']),
                  createdAt: parseDate(e['created_at']),
                  updatedAt: parseDate(e['updated_at']),
                );
              } else if (e is String) {
                return MediaItem(fileUrl: e);
              }
              return null;
            })
            .whereType<MediaItem>()
            .toList();
      } else if (mediaField is Map<String, dynamic>) {
        final e = mediaField;
        String? clean(dynamic v) {
          final s = (v ?? '').toString().trim();
          if (s.isEmpty) return null;
          return s.replaceAll('`', '');
        }
        bool? parseBool(dynamic v) {
          if (v == null) return null;
          if (v is bool) return v;
          final s = v.toString().toLowerCase();
          if (s == 'true') return true;
          if (s == 'false') return false;
          return null;
        }
        int? parseInt(dynamic v) {
          if (v == null) return null;
          if (v is int) return v;
          return int.tryParse(v.toString());
        }
        return [
          MediaItem(
            id: clean(e['id']),
            petId: clean(e['pet_id']),
            entityType: clean(e['entity_type']),
            entityId: clean(e['entity_id']),
            uploadedBy: clean(e['uploaded_by']),
            fileUrl: clean(e['file_url']),
            fileType: clean(e['file_type']),
            fileSize: clean(e['file_size']),
            mediaCaption: clean(e['media_caption']),
            sortOrder: parseInt(e['sort_order']),
            isCover: parseBool(e['is_cover']),
            isDeleted: parseBool(e['is_deleted']),
            createdAt: parseDate(e['created_at']),
            updatedAt: parseDate(e['updated_at']),
          )
        ];
      } else if (mediaField is String) {
        return [MediaItem(fileUrl: mediaField)];
      }
      return const <MediaItem>[];
    }

    return PetWalkModel(
      id: (json['id'] ?? '').toString(),
      petId: (json['pet_id'] ?? '').toString(),
      walkDate: (json['walk_date'] ?? json['date'] ?? '').toString(),
      durationMinutes: (json['duration_minutes'] is int)
          ? json['duration_minutes'] as int
          : int.tryParse((json['duration_minutes'] ?? json['duration'] ?? '0').toString()) ?? 0,
      location: (json['location'] ?? '').toString(),
      notes: (json['notes'] ?? '').toString(),
      media: parseMedia(json['media']),
      createdById: (json['created_by_id'] ?? '').toString().isEmpty ? null : (json['created_by_id'] ?? '').toString(),
      createdAt: parseDate(json['created_at']),
      updatedAt: parseDate(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pet_id': petId,
      'walk_date': walkDate,
      'duration_minutes': durationMinutes,
      'location': location,
      'notes': notes,
      'created_by_id': createdById,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'media': media
          .map((m) => {
                'id': m.id,
                'pet_id': m.petId,
                'entity_type': m.entityType,
                'entity_id': m.entityId,
                'uploaded_by': m.uploadedBy,
                'file_url': m.fileUrl,
                'file_type': m.fileType,
                'file_size': m.fileSize,
                'media_caption': m.mediaCaption,
                'sort_order': m.sortOrder,
                'is_cover': m.isCover,
                'is_deleted': m.isDeleted,
                'created_at': m.createdAt?.toIso8601String(),
                'updated_at': m.updatedAt?.toIso8601String(),
              })
          .toList(),
    };
  }
}
