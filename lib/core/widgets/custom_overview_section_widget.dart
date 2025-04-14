import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/overview_card_widget.dart';
import 'package:dummy/core/widgets/overview_header_widget.dart';
import 'package:flutter/material.dart';

class OverviewSection extends StatefulWidget {
  const OverviewSection({super.key});

  @override
  State<OverviewSection> createState() => _OverviewSectionState();
}

class _OverviewSectionState extends State<OverviewSection> {
  String selectedTab = 'Overview';
  final tabs = [
    'Overview',
    'Meals',
    'Walks',
    'Grooming',
    'Deworming',
    'Expenses',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OverviewHeader(
          tabs: tabs,
          selectedTab: selectedTab,
          onTabSelected: (tab) => setState(() => selectedTab = tab),
        ),
        const SizedBox(height: 16),

        if (selectedTab == 'Overview') ...[
          OverviewCard(
            iconPath: 'assets/icons/meals.png',
            title: 'Meals',
            subtitle: '2/3 logged today',
            onTap: () {},
          ),
          OverviewCard(
            iconPath: 'assets/icons/walks.png',
            title: 'Walks',
            subtitle: '1/2 logged today',
            onTap: () {},
          ),
          OverviewCard(
            iconPath: 'assets/icons/grooming.png',
            title: 'Grooming',
            subtitle: 'Last session on 03/15/2025',
            onTap: () {},
          ),
          OverviewCard(
            iconPath: 'assets/icons/deworming.png',
            title: 'Deworming',
            subtitle: 'Due on 04/01/2025',
            onTap: () {},
          ),
          OverviewCard(
            iconPath: 'assets/icons/expenses.png',
            title: 'Expenses',
            subtitle: '\$50 spent this month',
            onTap: () {},
          ),
        ],
        // You can display other content based on selected tab
      ],
    );
  }
}
