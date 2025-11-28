import '../../domain/entities/expense.dart';
import 'meal_model.dart'; // for MediaItemModel

class PetExpenseModel extends PetExpense {
  const PetExpenseModel({
    required super.id,
    required super.pet,
    required super.date,
    required super.category,
    required super.notes,
    required super.media,
    required super.amount,
    required super.currency,
    required super.categoryId,
    super.categoryName,
    super.createdById,
    super.createdAt,
    super.updatedAt,
    super.medias = const [],
  });

  factory PetExpenseModel.fromJson(Map<String, dynamic> json) {
    DateTime? parseDate(dynamic v) => v == null ? null : DateTime.tryParse(v.toString());
    String? clean(dynamic v) {
      final s = (v ?? '').toString().trim();
      if (s.isEmpty) return null;
      return s.replaceAll('`', '');
    }

    // Parse media list to domain MediaItem
    final dynamic mediaField = json['media'];
    List<MediaItemModel> mediaList = const [];
    if (mediaField is List) {
      mediaList = mediaField
          .map((e) {
            if (e is Map<String, dynamic>) return MediaItemModel.fromJson(e);
            if (e is String) return MediaItemModel(fileUrl: e);
            return null;
          })
          .whereType<MediaItemModel>()
          .toList();
    } else if (mediaField is Map<String, dynamic>) {
      mediaList = [MediaItemModel.fromJson(mediaField)];
    } else if (mediaField is String) {
      mediaList = [MediaItemModel(fileUrl: mediaField)];
    }

    final firstMediaUrl = mediaList.isNotEmpty ? (mediaList.first.fileUrl ?? '') : '';

    return PetExpenseModel(
      id: clean(json['id']) ?? '',
      pet: clean(json['pet_id']) ?? '',
      date: (json['expense_date'] ?? '').toString(),
      category: (json['category_name'] ?? '').toString(),
      notes: (json['notes'] ?? '').toString(),
      media: firstMediaUrl,
      amount: (json['amount'] ?? '').toString(),
      currency: (json['currency'] ?? '').toString(),
      categoryId: clean(json['category_id']) ?? '',
      categoryName: clean(json['category_name']),
      createdById: clean(json['created_by_id']),
      createdAt: parseDate(json['created_at']),
      updatedAt: parseDate(json['updated_at']),
      medias: mediaList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pet_id': pet,
      'expense_date': date,
      'amount': amount,
      'currency': currency,
      'notes': notes,
      'category_id': categoryId,
      'category_name': categoryName,
      'created_by_id': createdById,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'media': medias
          .map((m) => {
                'id': m.id,
                'pet_id': m.petId,
                'entity_type': m.entityType,
                'entity_id': m.entityId,
                'uploaded_by': m.uploadedBy,
                'file_url': m.fileUrl,
                'file_type': m.fileType,
                'file_size': m.fileSize,
                'media_caption': m.mediaCaption,
                'sort_order': m.sortOrder,
                'is_cover': m.isCover,
                'is_deleted': m.isDeleted,
                'created_at': m.createdAt?.toIso8601String(),
                'updated_at': m.updatedAt?.toIso8601String(),
              })
          .toList(),
    };
  }
}
