import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';

import '../../utils/type_def.dart';
import '../payload.dart';

class DewormingMediaPayload extends Equatable {
  const DewormingMediaPayload({
    required this.fileUrl,
    required this.fileType,
    required this.fileSize,
  });

  final String fileUrl;
  final String fileType;
  final String fileSize;

  Map<String, dynamic> toMap() => {
    'file_url': fileUrl,
    'file_type': fileType,
    'file_size': fileSize,
  };

  @override
  List<Object?> get props => [fileUrl, fileType, fileSize];
}

class DewormingPayload extends Equatable implements Payload {
  const DewormingPayload({
    required this.petId,
    required this.dewormingDate,
    required this.productName,
    // this.frequencyId,
    // this.dueDate,
    this.notes,
    // this.reminderTime,
    // this.timezone,
    // this.mediaList = const [],
  });

  // New schema fields only
  final String petId; // uuid
  final DateTime dewormingDate; // YYYY-MM-DD
  final String productName;
  // final String? frequencyId; // uuid (required only if setting reminder)
  // final DateTime? dueDate; // optional
  final String? notes; // optional
  // final String? reminderTime; // HH:MM, optional
  // final String? timezone; // e.g., IST, optional
  // final List<DewormingMediaPayload> mediaList; // list of media

  @override
  List<Object?> get props => [
    petId,
    dewormingDate,
    productName,
    // frequencyId,
    // dueDate,
    notes,
    // reminderTime,
    // timezone,
    // mediaList,
  ];

  @override
  JsonMap toMap() {
    // final bool includeReminder =
    //     (timezone != null && timezone!.isNotEmpty) && (reminderTime != null && reminderTime!.isNotEmpty);

    return {
      'pet_id': petId,
      'deworming_date': AppUtil.formatDate(dewormingDate),
      'product_name': productName,
      // if (includeReminder && frequencyId != null && frequencyId!.isNotEmpty) 'frequency_id': frequencyId,
      // if (dueDate != null) 'due_date': AppUtil.formatDate(dueDate!),
      // 'notes': notes ?? '',
      // if (includeReminder)
      //   'reminder': {
      //     'reminder_time': reminderTime,
      //     'timezone': timezone,
      //   },
      // 'media': mediaList.map((m) => m.toMap()).toList(),
    };
  }
}
