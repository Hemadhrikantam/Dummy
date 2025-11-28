import 'package:dio/dio.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class ExpenseMediaPayload extends Equatable {
  const ExpenseMediaPayload({
    required this.fileUrl,
    required this.fileType,
    required this.fileSize,
  });

  final String fileUrl; // https url to existing upload
  final String fileType; // image|video
  final String fileSize; // bytes as string

  JsonMap toMap() {
    String clean(String v) => v.trim().replaceAll('`', '');
    return {
      'file_url': clean(fileUrl),
      'file_type': clean(fileType),
      'file_size': clean(fileSize),
    };
  }

  @override
  List<Object?> get props => [fileUrl, fileType, fileSize];
}

class ExpensePayload extends Equatable implements Payload {
  const ExpensePayload({
    // New schema
    this.petId,
    this.expenseDate, // YYYY-MM-DD
    this.categoryId,
    this.amount,
    this.currency,
    this.notes,
    this.media,
    // Legacy (kept for backward compatibility with existing callers)
    this.date,
    this.category,
    this.mediaFile,
    this.pet,
  });

  // New schema fields
  final String? petId;
  final String? expenseDate; // YYYY-MM-DD
  final String? categoryId; // uuid
  final num? amount;
  final String? currency; // e.g., inr
  final String? notes;
  final List<ExpenseMediaPayload>? media; // array of media objects

  // Legacy fields (used by current form until migrated)
  final DateTime? date;
  final String? category;
  final MultipartFile? mediaFile;
  final String? pet;

  @override
  List<Object?> get props => [
        petId,
        expenseDate,
        categoryId,
        amount,
        currency,
        notes,
        media,
        date,
        category,
        mediaFile,
        pet,
      ];

  @override
  JsonMap toMap() {
    // Always emit the new schema keys, falling back to legacy values when present.
    final String dateStr = expenseDate ??
        (date != null ? AppUtil.formatDate(date!) : '');

    return {
      'pet_id': petId ?? pet,
      'expense_date': dateStr,
      'category_id': categoryId ?? category,
      'amount': amount ?? 0,
      'currency': (currency ?? 'inr').toLowerCase(),
      'notes': notes ?? '',
      'media': (media ?? const [])
          .map((m) => m.toMap())
          .toList(),
    };
  }
}
