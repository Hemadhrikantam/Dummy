import 'package:dummy/core/payload/payload.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import '../../utils/type_def.dart';

class MedicationPayload extends Equatable implements Payload {
  const MedicationPayload({
    required this.reminder,
    required this.tabletName,
    required this.company,
    required this.dosage,
    required this.dosageUnit,
    required this.morningTime,
    required this.afternoonTime,
    required this.nightTime,
    required this.startDate,
    required this.endDate,
    required this.note,
    required this.media,
    required this.pet,
    required this.frequency,
  });

  final bool reminder;
  final String tabletName;
  final String company;
  final int dosage;
  final String dosageUnit;
  final String morningTime;
  final String afternoonTime;
  final String nightTime;
  final DateTime startDate;
  final DateTime endDate;
  final String note;
  final MultipartFile media;
  final int pet;
  final int frequency;

  @override
  List<Object?> get props => [
        reminder,
        tabletName,
        company,
        dosage,
        dosageUnit,
        morningTime,
        afternoonTime,
        nightTime,
        startDate,
        endDate,
        note,
        media,
        pet,
        frequency,
      ];

  @override
  JsonMap toMap() => {
        'reminder': reminder,
        'tablet_name': tabletName,
        'company': company,
        'dosage': dosage,
        'dosage_unit': dosageUnit,
        'morning_time': morningTime,
        'afternoon_time': afternoonTime,
        'night_time': nightTime,
        'start_date': AppUtil.formatDate(startDate),
        'end_date': AppUtil.formatDate(endDate),
        'note': note,
        'media': media,
        'pet': pet,
        'frequency': frequency,
      };
}
