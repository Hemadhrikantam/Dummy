import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class MediaPayload extends Equatable implements Payload {
  const MediaPayload({
    required this.pet_id,
    required this.event_id,
    required this.description,
    required this.media,
  });

  final int pet_id;
  final int event_id;
  final MultipartFile media;
  final String description;
  @override
  List<Object?> get props => [event_id, description, media, pet_id];

  @override
  JsonMap toMap() => {
    "pet_id": pet_id,
    "event_id": event_id,
    "media": media,
    "description": description,
  };
}
