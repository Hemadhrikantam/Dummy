import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class GroomingPayload extends Equatable implements Payload {
  const GroomingPayload({
    required this.date,
    required this.groomingtype,
    required this.notes,
    required this.media,
    required this.pet,
  });

  final DateTime date;
  final String groomingtype;
  final String notes;
  final MultipartFile media;
  final int pet;

  @override
  List<Object?> get props => [date, groomingtype, notes, media, pet];

  @override
  JsonMap toMap() => {
    'date': AppUtil.formatDate(date),
    'grooming_type': groomingtype,
    'notes': notes,
    'pet': pet,
    'media': media,
  };
}
