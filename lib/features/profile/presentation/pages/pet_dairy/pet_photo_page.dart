import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PetPhotoCardPage extends StatelessWidget {
  const PetPhotoCardPage({super.key, required this.media});
  static const routeName = '/PetPhotoCardPage';
  final Media media;
  static Route<T> route<T>({required Media media}) {
    return MaterialPageRoute<T>(
      builder: (context) => PetPhotoCardPage(media: media),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
        child: Padding(
          padding: Styles.edgeInsetsAll20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Background image
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(media.media),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Gradient overlay (bottom)
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
                    child:  Text(
                      media.media,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // Top buttons (tag and close)
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBA59),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.cake, size: 16, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "Birthday",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
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
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: Icon(Icons.close, color: Colors.black),
                    ),
                  ),
                ),

                // Vertical action buttons
                Positioned(
                  right: 8,
                  bottom: 100,
                  child: Column(
                    children: [
                      SvgPicture.asset(ImageResources.heartWhite, width: 30),
                      Styles.gap10,
                      SvgPicture.asset(ImageResources.share, width: 30),
                      Styles.gap10,
                      SvgPicture.asset(ImageResources.editWhite, width: 30),
                      Styles.gap10,
                      SvgPicture.asset(ImageResources.deleteWhite, width: 30),
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
