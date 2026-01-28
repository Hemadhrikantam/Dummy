import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/features/dailycare/presentation/bloc/daily_care/daily_care_bloc.dart';
import 'package:dummy/features/dailycare/presentation/bloc/overview/overview_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/deworming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/expenses_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/grooming_tab.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_daily_header_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/walks_tab.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
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

  late PageController _pageController;

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

    for (final tab in tabs) {
      _tabKeys[tab] = GlobalKey();
    }

    final initialIndex = tabs.indexOf(widget.initialTab);

    _pageController = PageController(
      initialPage: initialIndex < 0 ? 0 : initialIndex,
    );

    /// set initial index to bloc
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DailyCareBloc>().add(
            DailyCareEvent.changePageIndex(
              initialIndex < 0 ? 0 : initialIndex,
            ),
          );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabScrollController.dispose();
    super.dispose();
  }

  void _scrollToSelectedTab(String tab) {
    final key = _tabKeys[tab];
    if (key == null) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context == null) return;

      final box = context.findRenderObject() as RenderBox;
      final offset = box.localToGlobal(Offset.zero);
      final width = box.size.width;

      final screenWidth = MediaQuery.of(this.context).size.width;
      final currentOffset = _tabScrollController.offset;

      final target =
          currentOffset + offset.dx + width / 2 - screenWidth / 2;

      _tabScrollController.animateTo(
        target.clamp(
          _tabScrollController.position.minScrollExtent,
          _tabScrollController.position.maxScrollExtent,
        ),
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

    return BlocConsumer<DailyCareBloc, DailyCareState>(
      listener: (context, state) {
        if (_pageController.page?.round() != state.pageIndex) {
          _pageController.animateToPage(
            state.pageIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        }
        _scrollToSelectedTab(tabs[state.pageIndex]);
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OverviewDailyHeaderWidget(
              tabs: tabs,
              selectedTab: tabs[state.pageIndex],
              scrollController: _tabScrollController,
              tabKeys: _tabKeys,
              onTabSelected: (tab) {
                context.read<DailyCareBloc>().add(
                      DailyCareEvent.changePageIndex(
                        tabs.indexOf(tab),
                      ),
                    );
              },
            ),
            Styles.gap10,
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  context.read<DailyCareBloc>().add(
                        DailyCareEvent.changePageIndex(index),
                      );
                },
                itemCount: tabPages.length,
                itemBuilder: (context, index) {
                  return tabPages[index];
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

