import '../../domain/entities/expense.dart';

class PetExpenseModel extends PetExpense {
  const PetExpenseModel({
    required super.id,
    required super.date,
    required super.category,
    required super.notes,
    required super.media,
    required super.pet,
  });

  factory PetExpenseModel.fromJson(Map<String, dynamic> json) {
    return PetExpenseModel(
      id: json['id'] as int,
      date: json['date'] as String,
      category: json['category'] as String,
      notes: json['notes'] as String,
      media: json['media'] as String,
      pet: json['pet'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'category': category,
      'notes': notes,
      'media': media,
      'pet': pet,
    };
  }
}
