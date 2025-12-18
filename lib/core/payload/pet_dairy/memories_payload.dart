import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class MemoriesPayload extends Equatable implements Payload {
  const MemoriesPayload({
    required this.petId,
    required this.entityId,
    required this.entityType,
    required this.title,
    required this.description,
  });

  final String petId;
  final String entityId;
  final String entityType;
  final String title;
  final String description;

  @override
  List<Object?> get props => [petId, entityId, entityType, title, description];

  @override
  JsonMap toMap() => {
    "pet_id": petId,
    "entity_id": entityId,
    "entity_type": entityType,
    "title": title,
    "description": description,
  };
}
