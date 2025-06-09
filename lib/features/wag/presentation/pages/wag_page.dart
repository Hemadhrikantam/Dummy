import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/wag/presentation/widgets/chat_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/image_resources.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/widgets/app_assets_image.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../widgets/chat_page.dart';

class WagPage extends StatefulWidget {
  const WagPage({super.key});
  static const routeName = '/WagPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const WagPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _WagPage();
}

class _WagPage extends State<WagPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [
          CustomHeaderWidget(),
          Styles.gap30,
          Expanded(child: ChatCard()),
          // Row(
          //   children: [
          //     AppAssestsImage(
          //       height: 40,
          //       width: 40,
          //       boxFit: BoxFit.contain,
          //       path: ImageResources.ai2,
          //     ),
          //     Styles.gap8,
          //     AppAssestsImage(
          //       height: 30,
          //       width: 50,
          //       boxFit: BoxFit.contain,
          //       path: ImageResources.wagLogo,
          //     ),
          //   ],
          // ),
          // Styles.gap20,
          // Expanded(
          //   child: CustomCard(
          //     padding: Styles.edgeInsetsOnlyW10,
          //     borderColor: AppColors.transparent,
          //     backgroundColor: AppColors.buttonBackground,
          //     child: ChatPage(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
