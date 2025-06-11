import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/features/dailycare/presentation/widgets/deworming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/expenses_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/grooming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_header_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/walks_tab.dart';
import 'package:flutter/material.dart';
import 'overview_tab.dart';
import 'meals_tab.dart';

class DailyCareOverviewSection extends StatefulWidget {
  const DailyCareOverviewSection({super.key});

  @override
  State<DailyCareOverviewSection> createState() =>
      _DailyCareOverviewSectionState();
}

class _DailyCareOverviewSectionState extends State<DailyCareOverviewSection> {
  String selectedTab = 'Overview';
  final _controller = PageController();
  final tabs = [
    'Overview',
    'Meals',
    'Walks',
    'Grooming',
    'Deworming',
    'Expenses',
  ];
  final tabPages = [
    OverviewTab(),
    MealsTab(),
    WalksTab(),
    GroomingTab(),
    DewormingTab(),
    ExpensesTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OverviewHeader(
          tabs: tabs,
          selectedTab: selectedTab,
          onTabSelected:
              (tab) => setState(() {
                selectedTab = tab;

                _controller.animateToPage(tabs.indexOf(tab),duration: Duration(seconds: 1),curve: Curves.ease);
              }),
        ),
        Styles.gap10,
        Expanded(
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (i) {
              setState(() {
                selectedTab = tabs[i]; 
              });
            },
            itemCount: tabPages.length,
            itemBuilder: (context, index) {
              return tabPages[index];
            },
          ),
        ),
      ],
    );
  }
}
