import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class WalkPayload extends Equatable implements Payload {
  const WalkPayload({
    required this.date,
    required this.duration,
    required this.location,
    required this.notes,
    required this.media,
    required this.pet,
  });

  final DateTime date;
  final String duration;
  final String location;
  final String notes;
  final MultipartFile media;
  final String pet;

  @override
  List<Object?> get props => [date, duration, location, notes, media, pet];

  @override
  JsonMap toMap() => {
    'date': AppUtil.formatDate(date),
    'duration': duration,
    'location': location,
    'notes': notes,
    'pet': pet,
    'media': media,
  };
}
