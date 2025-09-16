import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/features/dailycare/presentation/bloc/overview/overview_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/deworming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/expenses_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/grooming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_daily_header_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/walks_tab.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'overview_tab.dart';
import 'meals_tab.dart';

class DailyCareOverviewSection extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  final String initialTab;
  const DailyCareOverviewSection({
    super.key,
    required this.selectedPet,
    this.initialTab = 'Overview',
  });

  @override
  State<DailyCareOverviewSection> createState() =>
      _DailyCareOverviewSectionState();
}

class _DailyCareOverviewSectionState extends State<DailyCareOverviewSection> {
  final ScrollController _tabScrollController = ScrollController();
  final Map<String, GlobalKey> _tabKeys = {};
  // BuildContext? _scrollContext;
  late String selectedTab;
  late PageController _controller;
  final tabs = [
    'Overview',
    'Meals',
    'Walks',
    'Grooming',
    'Deworming',
    'Expenses',
  ];

  @override
  void initState() {
    super.initState();
    for (var tab in tabs) {
      _tabKeys[tab] = GlobalKey();
    }
    selectedTab = widget.initialTab;
    _controller = PageController(initialPage: tabs.indexOf(widget.initialTab));
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
    final tabPages = [
      BlocBuilder<OverviewBloc, OverviewState>(
        builder: (context, state) {
          return OverviewTab(
            overview: state.overview,
            selectedPet: widget.selectedPet,
          );
        },
      ),
      MealsTab(selectedPet: widget.selectedPet),
      WalksTab(selectedPet: widget.selectedPet),
      GroomingTab(selectedPet: widget.selectedPet),
      DewormingTab(selectedPet: widget.selectedPet),
      ExpensesTab(selectedPet: widget.selectedPet),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: OverviewDailyHeaderWidget(
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
