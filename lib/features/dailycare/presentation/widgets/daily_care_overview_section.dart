import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/features/dailycare/presentation/widgets/deworming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/expenses_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/grooming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_daily_header_widget.dart';
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
  final ScrollController _tabScrollController = ScrollController();
  final Map<String, GlobalKey> _tabKeys = {};
  BuildContext? _scrollContext;
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
  void initState() {
    super.initState();
    for (var tab in tabs) {
      _tabKeys[tab] = GlobalKey();
    }
  }

  void _scrollToSelectedTab(String tab) {
    final key = _tabKeys[tab];
    if (key == null) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final tabContext = key.currentContext;
      if (tabContext == null) return;

      final RenderBox box = tabContext.findRenderObject() as RenderBox;
      final boxOffset = box.localToGlobal(Offset.zero);
      final boxWidth = box.size.width;

      final screenWidth = MediaQuery.of(context).size.width;
      final scrollOffset = _tabScrollController.offset;

      final targetOffset =
          scrollOffset + boxOffset.dx + boxWidth / 2 - screenWidth / 2;

      _tabScrollController.animateTo(
        targetOffset,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OverviewDailyHeaderWidget(
          tabs: tabs,
          selectedTab: selectedTab,
          scrollController: _tabScrollController,
          tabKeys: _tabKeys,
          // onScrollContextReady: (ctx) => _scrollContext = ctx,
          onTabSelected: (tab) {
            setState(() {
              selectedTab = tab;
              _controller.animateToPage(
                tabs.indexOf(tab),
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            });
            _scrollToSelectedTab(tab);
          },
        ),
       
        Styles.gap10,
        Expanded(
          child: PageView.builder(
            controller: _controller,
           onPageChanged: (i) {
            setState(() {
              selectedTab = tabs[i];
            });
            _scrollToSelectedTab(tabs[i]); 
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
