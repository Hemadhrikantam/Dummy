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
    String? _clean(dynamic value) {
      if (value == null) return null;
      final str = value.toString().trim();
      if (str.isEmpty) return null;
      return str.replaceAll('`', '');
    }

    String _dateString(dynamic value) {
      final s = _clean(value) ?? '';
      // Expecting YYYY-MM-DD
      return s;
    }

    String? _timeString(dynamic value) {
      final s = _clean(value);
      // Expecting HH:mm:ss or null
      return s;
    }

    bool _parseBool(dynamic value) {
      if (value == null) return false;
      if (value is bool) return value;
      final str = value.toString().toLowerCase();
      return str == 'true' || str == '1';
    }

    int _parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is double) return value.toInt();
      return int.tryParse(value.toString()) ?? 0;
    }

    DateTime? _parseDateTime(dynamic value) {
      if (value == null) return null;
      if (value is DateTime) return value;
      return DateTime.tryParse(value.toString());
    }

    List<String> _parseUrls(dynamic value) {
      final list = <String>[];
      if (value is List) {
        for (final v in value) {
          final cleaned = _clean(v);
          if (cleaned != null && cleaned.isNotEmpty) {
            list.add(cleaned);
          }
        }
      }
      return list;
    }

    TimelineMetadata? _parseMetadata(dynamic value) {
      if (value == null) return null;
      if (value is Map) {
        final m = Map<String, dynamic>.from(value);
        return TimelineMetadata(
          eventName: _clean(m['event_name']),
          productName: _clean(m['product_name']),
          dueDate: _dateString(m['due_date']),
          isActive: m['is_active'] == null ? null : _parseBool(m['is_active']),
        );
      }
      return null;
    }

    return TimelineModel(
      id: _clean(map['id']) ?? '',
      type: _clean(map['type']) ?? '',
      petId: _clean(map['pet_id']) ?? '',
      eventDate: _dateString(map['event_date']),
      eventTime: _timeString(map['event_time']),
      title: _clean(map['title']) ?? '',
      notes: _clean(map['notes']),
      isSpecialMemory: _parseBool(map['is_special_memory']),
      isFavourite: _parseBool(map['is_favourite']),
      mediaCount: _parseInt(map['media_count']),
      mediaUrls: _parseUrls(map['media_urls']),
      createdAt: _parseDateTime(map['created_at']),
      createdBy: _clean(map['created_by']),
      metadata: _parseMetadata(map['metadata']),
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
