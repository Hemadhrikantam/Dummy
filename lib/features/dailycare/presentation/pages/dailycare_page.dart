// dailycare_page.dart
import 'package:dummy/core/widgets/daily_care_overview_section.dart';
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
          Expanded(
            // Allow OverviewSection to take remaining vertical space
            child:
                DailyCareOverviewSection(), // Ensure OverviewSection handles its scrolling internally if needed
          ),
        ],
      ),
    );
  }
}
