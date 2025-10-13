import 'package:equatable/equatable.dart';

class PresignModel extends Equatable {
  final String uploadUrl;
  final String finalUrl;
  final String fileKey;
  final int maxSize;

  const PresignModel({
    required this.uploadUrl,
    required this.finalUrl,
    required this.fileKey,
    required this.maxSize,
  });

  factory PresignModel.fromJson(Map<String, dynamic> json) {
    return PresignModel(
      uploadUrl: json['uploadUrl'] as String,
      finalUrl: json['finalUrl'] as String,
      fileKey: json['fileKey'] as String,
      maxSize: (json['maxSize'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
    'uploadUrl': uploadUrl,
    'finalUrl': finalUrl,
    'fileKey': fileKey,
    'maxSize': maxSize,
  };

  @override
  List<Object?> get props => [uploadUrl, finalUrl, fileKey, maxSize];
}
