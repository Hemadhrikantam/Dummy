import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';

import '../../utils/type_def.dart';
import '../payload.dart';

class DewormingPayload extends Equatable implements Payload {
  const DewormingPayload({
    required this.date,
    required this.productName,
    required this.dueDate,
    required this.reminderTime,
    required this.notes,
    required this.media,
    required this.pet,
    required this.frequency,
    required this.reminderTimezone,
    required this.reminderBefore,
  });

  final DateTime date;
  final String productName;
  final DateTime dueDate;
  final String reminderTime;
  final String notes;
  final MultipartFile media;
  final int pet;
  final int frequency;
  final int reminderTimezone;
  final int reminderBefore;

  @override
  List<Object?> get props => [
        date,
        productName,
        dueDate,
        reminderTime,
        notes,
        media,
        pet,
        frequency,
        reminderTimezone,
        reminderBefore,
      ];

  @override
  JsonMap toMap() => {
        'date': AppUtil.formatDate(date),
        'product_name': productName,
        'due_date': AppUtil.formatDate(dueDate),
        'reminder_time': reminderTime,
        'notes': notes,
        'media': media,
        'pet': pet,
        'freequency': frequency,
        'reminder_timezone': reminderTimezone,
        'reminder_before': reminderBefore,
      };
}
