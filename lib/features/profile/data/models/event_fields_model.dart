import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/event_fields.dart';

class EventFieldsModel extends EventFields {
  const EventFieldsModel({required super.id, required super.title});

  factory EventFieldsModel.fromMap(JsonMap map) {
    return EventFieldsModel(
      id: map['id'] as int? ?? 0,
      title: map['title'] as String? ?? '',
    );
  }
}
