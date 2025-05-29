// dailycare_page.dart
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/features/dailycare/presentation/widgets/daily_care_overview_section.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/base_screen.dart';

class DailycarePage extends StatefulWidget {
  const DailycarePage({super.key});

  @override
  State<DailycarePage> createState() => _DailycarePage();
}

class _DailycarePage extends State<DailycarePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [
          CustomHeaderWidget(),
          Styles.gap20,
          Expanded(child: DailyCareOverviewSection()),
        ],
      ),
    );
  }
}
