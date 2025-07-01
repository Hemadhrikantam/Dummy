import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class ExpensePayload extends Equatable implements Payload {
  const ExpensePayload({
    required this.date,
    required this.category,
    required this.notes,
    required this.media,
    required this.pet,
  });

  final DateTime date;
  final String category;
  final String notes;
  final MultipartFile media;
  final int pet;

  @override
  List<Object?> get props => [date, category, notes, media, pet];

  @override
  JsonMap toMap() => {
    'date': AppUtil.formatDate(date),
    'category': category,
    'notes': notes,
    'pet': pet,
    'media': media,
  };
}
