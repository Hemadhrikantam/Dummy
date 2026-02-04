import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/notifications/notifications_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/profile_options_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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

  initState() {
    super.initState();
    context.read<NotificationsBloc>().add(
      NotificationsEvent.getNotifications(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
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
                    child: AppNetworkImage(
                      url: state.petImage,
                      borderRadius: Styles.borderRadiusCircular25,
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
                    
                    child: BlocBuilder<NotificationsBloc, NotificationsState>(
                      builder: (context, state) {
                                  if (state.initStatus.loading) {
            return LoadingWidget.circularProgressIndicatorCenter;
          }

          if (state.notifications.isEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical:  170.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssestsImage(
                    path: ImageResources.emptyNotifications,
                    height: 231,
                    width: 304,
                    boxFit: BoxFit.contain,
                  ),
                  Styles.gap15,
                  Text(
                    "🐾 Oops! No Notifications Yet",
                    textAlign: TextAlign.center,
                           style: GoogleFonts.inter(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                height: 1.0,
                color: AppColors.black
              ),                    ),
                ],
              ),
            );
          }

                        return     AppCustomListViewBuilder(
                              shrinkWrap: true,
                              isExpand: false,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: state.notifications.length,
                              itemBuilder: (context, index) {
                                final notification = state.notifications[index];
                                return Padding(
                                  padding: Styles.edgeInsetsOnlyH15,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              notification.title,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              notification.body,
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
                                        AppUtil.formatTimeAndAgoFromString(
                                          notification.sentAt,
                                        ),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
