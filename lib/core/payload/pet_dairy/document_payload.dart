import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import '../../utils/type_def.dart';
import '../payload.dart';

class DocumentPayload extends Equatable implements Payload {
  const DocumentPayload({required this.pet, required this.media});

  final String pet;
  final MultipartFile media;
  @override
  List<Object?> get props => [media, pet];

  @override
  JsonMap toMap() => {"pet": pet, "document": media};
}
