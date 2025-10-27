import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class DocumentPayload extends Equatable implements Payload {
  const DocumentPayload({
    required this.petId,
    required this.fileUrl,
    required this.fileName,
    required this.fileSize,
    this.notes,
  });

  final String petId;
  final String fileUrl;
  final String fileName;
  final String fileSize; // pass from presign api 'maxSize'
  final String? notes; // optional

  @override
  List<Object?> get props => [petId, fileUrl, fileName, fileSize, notes];

  @override
  JsonMap toMap() => {
    "pet_id": petId,
    "file_url": fileUrl,
    "file_name": fileName,
    "file_size": fileSize,
    if (notes != null) "notes": notes,
  };
}
