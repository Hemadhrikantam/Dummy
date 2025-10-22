import 'package:dummy/core/payload/payload.dart';
import 'package:equatable/equatable.dart';
import 'package:dummy/core/utils/app_utils.dart';

import '../../utils/type_def.dart';

class MedicationPayload extends Equatable implements Payload {
  const MedicationPayload({
    required this.petId,
    required this.name,
    this.company = "",
    required this.dosageValue,
    required this.dosageTypeId,
    required this.frequencyId,
    required this.startDate,
    this.endDate,
    this.notes = "",
    this.imageUrl = "",
    this.timeslots = const <TimeslotPayload>[],
    this.reminderEnabled = false,
  });

  /// Core
  final String petId;
  final String name;
  final String company;

  /// Dosage
  final int dosageValue; // e.g. 2
  final String dosageTypeId; // e.g. type id
  final String frequencyId;

  /// Dates
  final DateTime startDate;
  final DateTime? endDate;

  /// Optional
  final String notes;
  final String imageUrl;

  /// Timeslots (array of { timeslot_id, custom_time? })
  final List<TimeslotPayload> timeslots;

  /// Reminder
  final bool reminderEnabled;

  @override
  List<Object?> get props => [
    petId,
    name,
    company,
    dosageValue,
    dosageTypeId,
    frequencyId,
    startDate,
    endDate,
    notes,
    imageUrl,
    timeslots,
    reminderEnabled,
  ];

  @override
  JsonMap toMap() {
    return {
      'pet_id': petId,
      'name': name,
      'company': company,
      'dosage_value': dosageValue,
      'dosage_type_id': dosageTypeId,
      'frequency_id': frequencyId,
      'start_date': AppUtil.formatDate(startDate), // "YYYY-MM-DD"
      // API sample shows empty string when absent; mirror that:
      'end_date': endDate != null ? AppUtil.formatDate(endDate!) : '',
      'notes': notes,
      'image_url': imageUrl,
      'timeslots': timeslots.map((t) => t.toMap()).toList(),
      'reminder': {
        // API sample uses strings "true"/"false"
        'enabled': reminderEnabled ? 'true' : 'false',
      },
    };
  }
}

/// One entry for the timeslots array
class TimeslotPayload extends Equatable {
  const TimeslotPayload({
    required this.timeslotId,
    this.customTime, // "HH:mm:ss" or null
  });

  final String timeslotId;
  final String? customTime;

  JsonMap toMap() => {
    'timeslot_id': timeslotId,
    'custom_time': customTime, // keep null if not provided
  };

  @override
  List<Object?> get props => [timeslotId, customTime];
}
