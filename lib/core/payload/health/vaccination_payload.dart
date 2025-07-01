import 'package:dummy/core/payload/payload.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import '../../utils/type_def.dart';

class VaccinationPayload extends Equatable implements Payload {
  const VaccinationPayload({
    required this.isGiven,
    required this.vaccinationName,
    required this.company,
    required this.reminderTime,
    required this.dateAdministered,
    required this.dueDate,
    required this.note,
    required this.media,
    required this.pet,
    required this.frequency,
    required this.reminderTimezone,
    required this.reminderBefore,
  });

  final bool isGiven;
  final String vaccinationName;
  final String company;
  final String reminderTime;
  final DateTime dateAdministered;
  final DateTime dueDate;
  final String note;
  final MultipartFile media;
  final int pet;
  final int frequency;
  final int reminderTimezone;
  final int reminderBefore;

  @override
  List<Object?> get props => [
    isGiven,
    vaccinationName,
    company,
    reminderTime,
    dateAdministered,
    dueDate,
    note,
    media,
    pet,
    frequency,
    reminderTimezone,
    reminderBefore,
  ];

  @override
  JsonMap toMap() => {
    'is_given': isGiven,
    'vaccination_name': vaccinationName,
    'company': company,
    'reminder_time': reminderTime,
    'Date_administered': AppUtil.formatDate(dateAdministered),
    'due_date': AppUtil.formatDate(dueDate),
    'note': note,
    'media': media,
    'pet': pet,
    'frequency': frequency,
    'reminder_timezone': reminderTimezone,
    'reminder_before': reminderBefore,

  };
}
