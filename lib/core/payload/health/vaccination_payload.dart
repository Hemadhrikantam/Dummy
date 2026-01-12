import 'package:dummy/core/payload/payload.dart';
import 'package:equatable/equatable.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:intl/intl.dart';

import '../../utils/type_def.dart';

class VaccinationPayload extends Equatable implements Payload {
  const VaccinationPayload({
    required this.petId,
    required this.name,
    required this.companyName,
    required this.frequencyId,
    required this.timeFrequencyId,
    required this.dueDate,
    this.dateAdministered,
    this.status,
    this.notes = "",
    this.imageUrl = "",
    this.reminderEnabled = false,
    required this.reminderTime,
    this.reminderTimezone = "",
    this.doseCompleted = false,
  });

  /// core fields
  final String petId;
  final String name;
  final String companyName;
  final String frequencyId;
  final String timeFrequencyId;
  final DateTime? dueDate;
  final DateTime? dateAdministered;

  /// optional status ("given") if already administered
  final String? status;

  /// misc
  final String notes;
  final String imageUrl;

  /// reminder
  final bool reminderEnabled;
  final DateTime reminderTime;
  final String reminderTimezone;
  final bool doseCompleted;

  @override
  List<Object?> get props => [
    petId,
    name,
    companyName,
    frequencyId,
    timeFrequencyId,
    dueDate,
    dateAdministered,
    status,
    notes,
    imageUrl,
    reminderEnabled,
    reminderTime,
    reminderTimezone,
    doseCompleted,
  ];

  @override
  JsonMap toMap() {
    final map = <String, dynamic>{
      'pet_id': petId,
      'name': name,
      'company_name': companyName,
      'dose_completed': doseCompleted,
      'date_administered':
          dateAdministered != null ? AppUtil.formatDate(dateAdministered!) : '',
      'due_date':
          dueDate != null ? AppUtil.formatDate(dueDate!) : '', // "YYYY-MM-DD"
      'notes': notes,
      'image_url': imageUrl,
      'reminder': {
        'enabled': reminderEnabled ? 'true' : 'false',
        'reminder_time': DateFormat('HH:mm').format(reminderTime),
        'timezone': reminderTimezone,
        'time_frequency_id': timeFrequencyId,
      },
    };

    // Only include status if provided (e.g., "given")
    if (status != null && status!.isNotEmpty) {
      map['status'] = status;
    }

    // Include dose_completed only when true
    if (doseCompleted) {
      map['dose_completed'] = true;
    }

    return map;
  }
}
