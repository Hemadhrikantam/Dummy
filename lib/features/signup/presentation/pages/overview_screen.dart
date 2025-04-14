import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:dummy/core/widgets/custom_overview_section_widget.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});
  static const routeName = '/overviewScreen';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const OverviewScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [CustomHeaderWidget(), Styles.gap10, OverviewSection()],
      ),
    );
  }
}
