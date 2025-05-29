import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:flutter/material.dart';

class PetPhotoCardPage extends StatelessWidget {
  const PetPhotoCardPage({super.key});
  static const routeName = '/PetPhotoCardPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetPhotoCardPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Background image
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(ImageResources.dogImage),
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
                    child: const Text(
                      "This is pic captured in a beach, he's running",
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
                  child: CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: Icon(Icons.close, color: Colors.black),
                  ),
                ),

                // Vertical action buttons
                Positioned(
                  right: 8,
                  bottom: 100,
                  child: Column(
                    children: const [
                      Icon(Icons.favorite_border, color: Colors.white),
                      SizedBox(height: 16),
                      Icon(Icons.share, color: Colors.white),
                      SizedBox(height: 16),
                      Icon(Icons.edit, color: Colors.white),
                      SizedBox(height: 16),
                      Icon(Icons.copy, color: Colors.white),
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
