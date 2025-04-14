import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/widgets/bottom_icon_data.dart';
import 'package:iconsax/iconsax.dart';

class StaticWidget {
    static List<BottomIconData> bottomIconData = [
    BottomIconData(icon: Iconsax.home, name: AppText.home),
    BottomIconData(icon: Iconsax.heart, name: AppText.health),
    BottomIconData(icon: Iconsax.health, name: AppText.dailyCare),
    BottomIconData(icon: Iconsax.more_square, name: AppText.addoption),
  ];
}