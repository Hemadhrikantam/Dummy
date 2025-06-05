import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class TimeLineTab extends StatelessWidget {
  const TimeLineTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.edgeInsetsOnlyH00,
      children: [
        CustomCard(
          borderColor: AppColors.white,
          child: AppCustomListViewBuilder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            isExpand: false,
            shrinkWrap: true,
            separatorBuilder: (context, i) => Styles.gap8,
            itemBuilder: (context, i) {
              return Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: context.height * 0.16,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Vertical dashed line
                        Positioned.fill(
                          child: CustomPaint(painter: DashedLinePainter()),
                        ),
                        // Circular indicator
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: const Color(0xFF9B5A24), // brown color
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(
                                    0xFF9B5A24,
                                  ).withOpacity(0.3),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Styles.gap8,
                  Expanded(
                    child: CustomCard(
                      padding: Styles.edgeInsetsAll06,
                      borderColor: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      child: Row(
                        children: [
                          AppAssestsImage(
                            path: ImageResources.dogImage,
                            height: 108,
                            width: 111,
                          ),
                          Styles.gap10,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: Styles.borderRadiusCircular25,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.1751, 0.5754, 1.0],
                                      colors: [
                                        AppColors.buttonBackground,
                                        Color(0xFFD29949),
                                        Color(0xFF997035),
                                      ],
                                    ),
                                  ),
                                  padding: Styles.edgeInsetsAll08,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AppIcon(
                                        icon: Icons.cake_outlined,
                                        size: 14,
                                        color: AppColors.white,
                                      ),
                                      Styles.gap2,
                                      Text(
                                        'Birthday',
                                        style: context.textTheme.titleSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              color: AppColors.white,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Styles.gap6,
                                Text(
                                  'This is pic captued in a beach, he’s running.....',
                                  style: context.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Styles.gap6,
                                Text(
                                  '12/01/2025',
                                  style: context.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: AppColors.stepperColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const dashHeight = 6.0;
    const dashSpacing = 6.0;
    final paint =
        Paint()
          ..color = Colors.grey.shade400
          ..strokeWidth = 1.5;

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
