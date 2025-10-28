import 'package:equatable/equatable.dart';
import 'meal.dart'; // reuse MediaItem

class PetExpense extends Equatable {
  // Primary identifiers
  final String id; // uuid
  final String pet; // pet_id (uuid)

  // Display fields used by current UI
  final String date; // expense_date (ISO string)
  final String category; // category_name
  final String notes; // can be empty
  final String media; // first media file_url (if any)

  // Additional fields from new API
  final String amount; // as string per API sample
  final String currency; // e.g., INR
  final String categoryId; // uuid
  final String? categoryName; // redundancy with category
  final String? createdById;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<MediaItem> medias; // full media objects

  const PetExpense({
    required this.id,
    required this.pet,
    required this.date,
    required this.category,
    required this.notes,
    required this.media,
    required this.amount,
    required this.currency,
    required this.categoryId,
    this.categoryName,
    this.createdById,
    this.createdAt,
    this.updatedAt,
    this.medias = const [],
  });

  @override
  List<Object?> get props => [
        id,
        pet,
        date,
        category,
        notes,
        media,
        amount,
        currency,
        categoryId,
        categoryName,
        createdById,
        createdAt,
        updatedAt,
        medias,
      ];
}
