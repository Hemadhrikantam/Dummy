import 'package:dummy/core/payload/payload.dart';
import 'package:equatable/equatable.dart';
import 'package:dummy/core/utils/app_utils.dart';

import '../../utils/type_def.dart';

class VaccinationPayload extends Equatable implements Payload {
  const VaccinationPayload({
    required this.petId,
    required this.name,
    required this.frequencyId,
    required this.dueDate,
    this.status,
    this.notes = "",
    this.imageUrl = "",
    this.reminderEnabled = false,
    required this.reminderTime,
    this.reminderTimezone = "",
  });

  /// core fields
  final String petId;
  final String name;
  final String frequencyId;
  final DateTime dueDate;

  /// optional status ("given") if already administered
  final String? status;

  /// misc
  final String notes;
  final String imageUrl;

  /// reminder
  final bool reminderEnabled;
  final DateTime reminderTime;
  final String reminderTimezone;

  @override
  List<Object?> get props => [
    petId,
    name,
    frequencyId,
    dueDate,
    status,
    notes,
    imageUrl,
    reminderEnabled,
    reminderTime,
    reminderTimezone,
  ];

  @override
  JsonMap toMap() {
    final map = <String, dynamic>{
      'pet_id': petId,
      'name': name,
      'frequency_id': frequencyId,
      'due_date': AppUtil.formatDate(dueDate), // "YYYY-MM-DD"
      'notes': notes,
      'image_url': imageUrl,
      'reminder': {
        // API sample shows strings "true"/"false"; follow that exactly:
        'enabled': reminderEnabled ? 'true' : 'false',
        'reminder_time': AppUtil.formatDate(reminderTime),
        'timezone': reminderTimezone,
      },
    };

    // Only include status if provided (e.g., "given")
    if (status != null && status!.isNotEmpty) {
      map['status'] = status;
    }

    return map;
  }
}
