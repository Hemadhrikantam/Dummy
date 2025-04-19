import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_text_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/static_widget.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:dummy/features/profile/presentation/widgets/profile_header.dart';
import 'package:dummy/features/profile/presentation/widgets/profile_options/pet_list_Widget.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_options/profile_options_widget.dart';

class ProfileOptionsPage extends StatelessWidget {
  const ProfileOptionsPage({super.key});
  static const routeName = '/ProfileOptionsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const ProfileOptionsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          ProfileHeader(),
          Styles.gap20,
          PetListWidget(),
          Styles.gap20,
          CustomCard(
            child: Column(
              children: [
                Column(
                  children: List.generate(
                    StaticWidget.settingsListData.length,
                    (i) {
                      final item = StaticWidget.settingsListData;
                      return Padding(
                        padding: Styles.edgeInsetsAll08,
                        child: SettingsItemsWidget(
                          leadingIcon: item[i].leadingIcon,
                          title: item[i].title,
                          onPressed: () async {
                            if (item[i].title == AppText.petProfile) {
                              context.pushNamed(PetDairyPage.routeName);
                            } else if (item[i].title ==
                                AppText.accountDetails) {
                            } else if (item[i].title == AppText.manageFamily) {
                            } else if (item[i].title ==
                                AppText.premiumSubscription) {
                            } else if (item[i].title == AppText.vetNearMe) {
                            } else if (item[i].title == AppText.support) {}
                          },
                        ),
                      );
                    },
                  ),
                ),
                Styles.gap20,

                AppTextButton(
                  name: AppText.logout,
                  textColor: AppColors.redText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
