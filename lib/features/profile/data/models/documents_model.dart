import 'package:dummy/core/utils/type_def.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';

class DocumentsModel extends Documents {
  const DocumentsModel({
    required super.id,
    required super.user,
    required super.pet,
    required super.document,
    required super.uploadedAt,
  });
   factory DocumentsModel.fromMap(JsonMap map) {
    return DocumentsModel(
      id: map['id'] as int? ?? 0,
      user: map['user'] as String? ?? '',
      pet: map['pet'] as String? ?? '',
      document: map['document'] as String? ?? '',
      uploadedAt: map['uploaded_at'] as String? ?? '',
      
    );
  }
}
