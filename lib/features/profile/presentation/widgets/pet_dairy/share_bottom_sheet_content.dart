import 'package:flutter/material.dart';
import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/services/share_service.dart';
import 'package:dummy/core/utils/app_utils.dart';
import '../../../domain/entities/media.dart';

class ShareBottomSheetContent extends StatelessWidget {
  const ShareBottomSheetContent({super.key, required this.media});
  final Media media;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppText.share,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Styles.gap16,

          // Using Row with Expanded so each icon flexes equally
          Row(
            children: [
              Expanded(
                flex: 1,
                child: _buildIconButton(
                  icon: Icons.call,
                  color: Colors.green,
                  label: AppText.whatsapp,
                  onTap: AppUtil.openWhatsApp,
                ),
              ),
              Expanded(
                flex: 1,
                child: _buildIconButton(
                  icon: Icons.mail,
                  color: Colors.red,
                  label: AppText.gmail,
                  onTap: () {
                    AppUtil.launchApp(AppText.launchGmail);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: _buildIconButton(
                  icon: Icons.message,
                  color: Colors.green,
                  label: AppText.messages,
                  onTap: () {
                    AppUtil.launchApp(AppText.launchMessages);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: _buildIconButton(
                  icon: Icons.snapchat,
                  color: Colors.yellow,
                  label: AppText.snapchat,
                  onTap: () {
                    AppUtil.launchApp(AppText.snapchat);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        ShareService.shareByUrl(media.fileUrl);
                      },
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.black12,
                          shape: CircleBorder(),
                        ),
                        child: const Padding(
                          padding: Styles.edgeInsetsAll12,
                          child: Icon(Icons.more_horiz, color: AppColors.black),
                        ),
                      ),
                    ),
                    Styles.gap8,
                    Text(AppText.more, style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),

          Styles.gap16,
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required Color color,
    required String label,
    required VoidCallback onTap,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Ink(
          decoration: ShapeDecoration(
            color: color.withOpacity(0.1),
            shape: const CircleBorder(),
          ),
          child: IconButton(icon: Icon(icon, color: color), onPressed: onTap),
        ),
        Styles.gap8,
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
