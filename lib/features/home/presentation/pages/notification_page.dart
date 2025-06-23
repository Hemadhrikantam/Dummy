import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/profile/presentation/pages/profile_options_page.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  static const routeName = '/NotificationPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const NotificationPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _NotificationPage();
}

class _NotificationPage extends State<NotificationPage> {
  final List<Map<String, String>> notifications = List.generate(
    10,
    (index) => {
      "title": "Title",
      "message": "Your Exotic Veggie Platter is on the menu. Get excited!",
      "time": "2 days ago",
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [
          Row(
            children: [
              BackButtonWidget(),
              Styles.gap8,
              Expanded(
                child: Text(
                  AppText.notifications,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(ProfileOptionsPage.routeName);
                },
                child: AppAssestsImage(
                  path: ImageResources.dog,
                  height: 45,
                  width: 45,
                ),
              ),
            ],
          ),
          Styles.gap40,
          Expanded(
            child: SingleChildScrollView(
              child: CustomCard(
                child: AppCustomListViewBuilder(
                  shrinkWrap: true,
                  isExpand: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    final notification = notifications[index];
                    return Padding(
                      padding: Styles.edgeInsetsOnlyH15,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notification['title']!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  notification['message']!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            notification['time']!,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
