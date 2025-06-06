import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/widgets/bottom_icon_data.dart';
import 'package:dummy/core/widgets/profile_options_list.dart';
import 'package:iconsax/iconsax.dart';

class StaticWidget {
  static List<BottomIconData> bottomIconData = [
    BottomIconData(icon: Iconsax.home, name: AppText.home),
    BottomIconData(icon: Iconsax.heart, name: AppText.health),
    BottomIconData(icon: Iconsax.health, name: AppText.dailyCare),
    BottomIconData(icon: Iconsax.more_square, name: AppText.addoption),
  ];

  static List<SettingsListData> settingsListData = [
    SettingsListData(
      leadingIcon: ImageResources.petProfile,
      title: AppText.petProfile,
    ),
    SettingsListData(
      leadingIcon: ImageResources.accountDetails,
      title: AppText.accountDetails,
    ),
    SettingsListData(
      leadingIcon: ImageResources.petProfile,
      title: AppText.manageFamily,
    ),
    SettingsListData(
      leadingIcon: ImageResources.premiumSubscription,
      title: AppText.premiumSubscription,
    ),
    SettingsListData(
      leadingIcon: ImageResources.premiumSubscription,
      title: AppText.vetNearMe,
    ),
    SettingsListData(
      leadingIcon: ImageResources.support,
      title: AppText.support,
    ),
  ];
  static List<SettingsListData> ngoProfileListData = [
    SettingsListData(
      leadingIcon: ImageResources.accountDetails,
      title: AppText.accountDetails,
    ),
    SettingsListData(
      leadingIcon: ImageResources.premiumSubscription,
      title: AppText.vetNearMe,
    ),
    SettingsListData(
      leadingIcon: ImageResources.support,
      title: AppText.support,
    ),
  ];
}
