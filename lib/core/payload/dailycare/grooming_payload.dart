import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class GroomingMediaPayload extends Equatable {
  const GroomingMediaPayload({
    required this.fileUrl,
    required this.fileType,
    required this.fileSize,
  });

  final String fileUrl;
  final String fileType; // image|video
  final String fileSize; // bytes string

  JsonMap toMap() {
    String _clean(String v) => v.trim().replaceAll('`', '');
    return {
      'file_url': _clean(fileUrl),
      'file_type': _clean(fileType),
      'file_size': _clean(fileSize),
    };
  }

  @override
  List<Object?> get props => [fileUrl, fileType, fileSize];
}

class GroomingPayload extends Equatable implements Payload {
  const GroomingPayload({
    // New schema
    required this.petId,
    required this.groomingDate, // YYYY-MM-DD
    required this.groomingTypeId,
    required this.notes,
    this.mediaList,
  });

  // New schema fields
  final String petId;
  final String groomingDate;
  final String groomingTypeId;
  final String notes;
  final List<GroomingMediaPayload>? mediaList;

  @override
  List<Object?> get props => [
    petId,
    groomingDate,
    groomingTypeId,
    notes,
    mediaList,
  ];

  @override
  JsonMap toMap() {
    return {
      'pet_id': petId,
      'grooming_date': AppUtil.formatDate(DateTime.parse(groomingDate)),
      'grooming_type_id': groomingTypeId,
      'notes': notes,
      'media': (mediaList ?? const []).map((m) => m.toMap()).toList(),
    };
  }
}
