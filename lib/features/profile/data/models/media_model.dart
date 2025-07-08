import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';

class MediaModel extends Media {
  const MediaModel({required super.id, required super.media});
  factory MediaModel.fromMap(JsonMap map) {
    return MediaModel(
      id: map['id'] as int? ?? 0,
      media: map['media'] as String? ?? '',
    );
  }
}
