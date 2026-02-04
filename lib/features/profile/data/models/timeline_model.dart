import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/timeline.dart';

class TimelineModel extends Timeline {
  const TimelineModel({
    required super.id,
    required super.type,
    required super.petId,
    required super.eventDate,
    required super.title,
    required super.isSpecialMemory,
    required super.isFavourite,
    required super.mediaCount,
    required super.mediaUrls,
    super.eventTime,
    super.notes,
    super.createdAt,
    super.createdBy,
    super.metadata,
  });

  factory TimelineModel.fromMap(JsonMap map) {
    String? clean(dynamic value) {
      if (value == null) return null;
      final str = value.toString().trim();
      if (str.isEmpty) return null;
      return str.replaceAll('`', '');
    }

    String dateString(dynamic value) {
      final s = clean(value) ?? '';
      // Expecting YYYY-MM-DD
      return s;
    }

    String? timeString(dynamic value) {
      final s = clean(value);
      // Expecting HH:mm:ss or null
      return s;
    }

    bool parseBool(dynamic value) {
      if (value == null) return false;
      if (value is bool) return value;
      final str = value.toString().toLowerCase();
      return str == 'true' || str == '1';
    }

    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is double) return value.toInt();
      return int.tryParse(value.toString()) ?? 0;
    }

    DateTime? parseDateTime(dynamic value) {
      if (value == null) return null;
      if (value is DateTime) return value;
      return DateTime.tryParse(value.toString());
    }

    List<String> parseUrls(dynamic value) {
      final list = <String>[];
      if (value is List) {
        for (final v in value) {
          final cleaned = clean(v);
          if (cleaned != null && cleaned.isNotEmpty) {
            list.add(cleaned);
          }
        }
      }
      return list;
    }

    TimelineMetadata? parseMetadata(dynamic value) {
      if (value == null) return null;
      if (value is Map) {
        final m = Map<String, dynamic>.from(value);
        return TimelineMetadata(
          eventName: clean(m['event_name']),
          productName: clean(m['product_name']),
          dueDate: dateString(m['due_date']),
          isActive: m['is_active'] == null ? null : parseBool(m['is_active']),
        );
      }
      return null;
    }

    return TimelineModel(
      id: clean(map['id']) ?? '',
      type: clean(map['entity_type']) ?? '',
      petId: clean(map['pet_id']) ?? '',
      eventDate: dateString(map['marked_at']),
      eventTime: timeString(map['event_time']),
      title: clean(map['title']) ?? '',
    notes: clean(map['notes']),
      isSpecialMemory: parseBool(map['is_special_memory']),
      isFavourite: parseBool(map['is_favourite']),
      mediaCount: parseInt(map['media_count']),
      mediaUrls: parseUrls(map['media_urls']),
      createdAt: parseDateTime(map['created_at']),
      createdBy: clean(map['marked_by_id']),
      metadata: parseMetadata(map['metadata']),
    );
  }

  JsonMap toMap() {
    return {
      'id': id,
      'type': type,
      'pet_id': petId,
      'event_date': eventDate,
      'event_time': eventTime,
      'title': title,
      'notes': notes,
      'is_special_memory': isSpecialMemory,
      'is_favourite': isFavourite,
      'media_count': mediaCount,
      'media_urls': mediaUrls,
      'created_at': createdAt?.toIso8601String(),
      'created_by': createdBy,
      'metadata':
          metadata == null
              ? null
              : {
                'product_name': metadata!.productName,
                'due_date': metadata!.dueDate,
                'is_active': metadata!.isActive,
              },
    };
  }
}
