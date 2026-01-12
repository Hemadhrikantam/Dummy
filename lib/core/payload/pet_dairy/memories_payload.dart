import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';
import '../../enum/entity_type.dart';

class MemoriesPayload extends Equatable implements Payload {
  const MemoriesPayload({
    required this.petId,
    required this.entityId,
    required this.entityType,
  });

  final String petId;
  final String entityId;
  final EntityType entityType;

  @override
  List<Object?> get props => [petId, entityId, entityType];

  @override
  JsonMap toMap() => {
    "pet_id": petId,
    "entity_id": entityId,
    "entity_type": entityType.value,
  };
}
