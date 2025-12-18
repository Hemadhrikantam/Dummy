import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/services/share_service.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/features/profile/domain/entities/documents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PetDocumentPage extends StatelessWidget {
  const PetDocumentPage({super.key, required this.media});
  static const routeName = '/PetDocumentPage';
  final Documents media;

  static Route<T> route<T>({required Documents media}) {
    return MaterialPageRoute<T>(
      builder: (context) => PetDocumentPage(media: media),
      settings: const RouteSettings(name: routeName),
    );
  }

  bool _isImageUrl(String url) {
    final u = url.toLowerCase();
    return u.endsWith('.png') ||
        u.endsWith('.jpg') ||
        u.endsWith('.jpeg') ||
        u.endsWith('.gif') ||
        u.endsWith('.webp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
        child: Padding(
          padding: Styles.edgeInsetsAll20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Background document preview
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black,
                  child:
                      _isImageUrl(media.fileUrl)
                          ? Image.network(media.fileUrl, fit: BoxFit.cover)
                          : Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.description,
                                  color: Colors.white,
                                  size: 64,
                                ),
                                Styles.gap10,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: Text(
                                    media.fileUrl.split('/').last,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                ),

                // Gradient overlay (bottom) for notes
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black87],
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      media.notes ?? '',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                Positioned(
                  top: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: Icon(Icons.close, color: Colors.black),
                    ),
                  ),
                ),

                // Right side actions: favorite, share, edit, delete
                Positioned(
                  right: 8,
                  bottom: 100,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ShareService.shareByUrl(
                            media.fileUrl,
                            text: media.notes ?? "document",
                          );
                        },
                        child: SvgPicture.asset(
                          ImageResources.share,
                          width: 30,
                        ),
                      ),
                      Styles.gap20,
                      GestureDetector(
                        onTap: () {
                          BottomModels.documentDeleteBottomSheet(
                            context,
                            media.id,
                          );
                        },
                        child: SvgPicture.asset(
                          ImageResources.deleteWhite,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
