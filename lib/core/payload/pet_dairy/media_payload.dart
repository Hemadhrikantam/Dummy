import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class MediaPayload extends Equatable implements Payload {
  const MediaPayload({
    required this.petId,
    required this.fileUrl,
    required this.fileType,
    required this.fileSize,
    this.notes,
    required this.eventTypeId,
  });

  final String petId;
  final String fileUrl;
  final String fileType; // "image" or "video"
  final String fileSize; // number as string
  final String? notes; // optional
  final String eventTypeId; // UUID from /enums api

  @override
  List<Object?> get props => [
    petId,
    fileUrl,
    fileType,
    fileSize,
    notes,
    eventTypeId,
  ];

  @override
  JsonMap toMap() => {
    "pet_id": petId,
    "file_url": fileUrl,
    "file_type": fileType,
    "file_size": fileSize,
    if (notes != null) "notes": notes,
    "event_type_id": eventTypeId,
  };
}
