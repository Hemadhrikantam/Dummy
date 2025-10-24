import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class WalkMediaPayload extends Equatable {
  const WalkMediaPayload({
    required this.fileUrl,
    this.fileType = 'image',
    this.fileSize = 1,
  });

  final String fileUrl;
  final String fileType; // image/video - default image
  final num fileSize; // positive number (bytes)

  @override
  List<Object?> get props => [fileUrl, fileType, fileSize];

  JsonMap toMap() => {
        'file_url': fileUrl.trim().replaceAll('`', ''),
        'file_type': fileType,
        'file_size': fileSize,
      };
}

class WalkPayload extends Equatable implements Payload {
  const WalkPayload({
    required this.petId,
    required this.walkDate,
    required this.durationMinutes,
    required this.location,
    required this.notes,
    this.media = const [],
  });

  final String petId; // pet_id
  final DateTime walkDate; // YYYY-MM-DD
  final int durationMinutes; // number - max 1440
  final String location;
  final String notes;
  final List<WalkMediaPayload> media;

  @override
  List<Object?> get props => [
        petId,
        walkDate,
        durationMinutes,
        location,
        notes,
        media,
      ];

  @override
  JsonMap toMap() => {
        'pet_id': petId,
        'walk_date': AppUtil.formatDate(walkDate),
        'duration_minutes': durationMinutes,
        'location': location,
        'notes': notes,
        'media': media.map((m) => m.toMap()).toList(),
      };
}
