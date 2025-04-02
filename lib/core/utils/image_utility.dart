import 'dart:io';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';


abstract class ImageUtilityService {
  Future<File?> pickImageFromGallery(
      {bool cropImage = false,
      CameraDevice preferredCameraDevice = CameraDevice.rear});

  Future<File?> pickImageFromCamera(
      {bool cropImage = false,
      CameraDevice preferredCameraDevice = CameraDevice.rear});

  Future<File?> pickImage({bool cropImage = false});
  const ImageUtilityService();
}

class ImageUtilityServiceImpl implements ImageUtilityService {
  static int imageQuality = 45;
  const ImageUtilityServiceImpl();
  @override
  Future<File?> pickImageFromGallery(
      {bool cropImage = false,
      CameraDevice preferredCameraDevice = CameraDevice.rear}) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: imageQuality,
      preferredCameraDevice: preferredCameraDevice,
    );

    // if (cropImage && pickedFile != null) {
    //   return cropSelectedImage(pickedFile.path);
    // }

    return pickedFile != null ? File(pickedFile.path) : null;
  }

  @override
  Future<File?> pickImageFromCamera(
      {bool cropImage = false,
      CameraDevice preferredCameraDevice = CameraDevice.rear}) async {
    LogUtility.info('Came $preferredCameraDevice');
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: imageQuality,
      preferredCameraDevice: preferredCameraDevice,
    );

    // if (cropImage && pickedFile != null) {
    //   return cropSelectedImage(pickedFile.path);
    // }

    return pickedFile != null ? File(pickedFile.path) : null;
  }

  @override
  Future<File?> pickImage({bool cropImage = false}) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'jpg',
        'png',
        'jpeg',
        'heif',
        'webp',
        'tiff',
        'psd',
        'ai',
      ],
      allowMultiple: false,
    );

    if (result == null || result.files.isEmpty) return null;

    // if (cropImage) {
    //   final croppedFile = await cropSelectedImage(result.files.first.path!);
    //   return File(croppedFile!.path);
    // }

    return File(result.files.first.path!);
  }

}
