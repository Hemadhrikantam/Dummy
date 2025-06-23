import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/features/wag/presentation/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/widgets/custom_header_widget.dart';

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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.screenBackgroundColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: Styles.edgeInsetsAll12,
            child: Column(
              children: [
                CustomHeaderWidget(),
                Styles.gap30,
                Expanded(child: ChatCard()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
