import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class MealMediaPayload extends Equatable {
  const MealMediaPayload({
    required this.fileUrl,
    this.fileType = 'image',
    this.fileSize = 1,
    this.mediaCaption = '',
  });

  final String fileUrl;
  final String fileType; // image/video - default image
  final int fileSize; // positive number (bytes)
  final String mediaCaption;

  @override
  List<Object?> get props => [fileUrl, fileType, fileSize, mediaCaption];

  JsonMap toMap() => {
        'file_url': fileUrl,
        'file_type': fileType,
        'file_size': fileSize,
        'media_caption': mediaCaption,
      };
}

class MealPayload extends Equatable implements Payload {
  const MealPayload({
    required this.date,
    required this.mealTime,
    required this.mealTypeId,
    required this.notes,
    required this.pet,
    this.media = const [],
  });

  final DateTime date;
  final String mealTime; // HH:MM (24-hour)
  final String mealTypeId; // UUID from /enums
  final String notes;
  final String pet; // pet_id
  final List<MealMediaPayload> media;

  @override
  List<Object?> get props => [
        date,
        mealTime,
        mealTypeId,
        notes,
        pet,
        media,
      ];

  @override
  JsonMap toMap() => {
        'pet_id': pet,
        'meal_date': AppUtil.formatDate(date),
        'meal_time': mealTime,
        'meal_type_id': mealTypeId,
        'notes': notes,
        'media': media.map((m) => m.toMap()).toList(),
      };
}
