// dailycare_page.dart
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/features/dailycare/presentation/widgets/daily_care_overview_section.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/base_screen.dart';
import '../bloc/overview/overview_bloc.dart';

class DailycarePage extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  final String selectedPetId;
  final String initialTab;
  const DailycarePage({
    super.key,
    required this.selectedPet,
    this.initialTab = 'Overview',
    required this.selectedPetId,
  });
  static const routeName = '/DailyCarePage';

  static Route<T> route<T>(DashboardPetDetails selectedPet, String selectedPetId) {
    return MaterialPageRoute<T>(
      builder:
          (context) => DailycarePage(
            selectedPet: selectedPet,
            selectedPetId: selectedPetId,
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<DailycarePage> createState() => _DailycarePage();
}

class _DailycarePage extends State<DailycarePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      LogUtility.info('selected pet ${widget.selectedPet?.id??0}');
      LogUtility.info('selected pet id ----> ${widget.selectedPetId}');
      context.read<OverviewBloc>().add(
        OverviewEvent.overview(widget.selectedPet?.id??''),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return MaterialBaseScreen(
          child: Column(
            children: [
              CustomHeaderWidget(petImage: state.petImage),
              Styles.gap20,
              Expanded(
                child: DailyCareOverviewSection(
                  selectedPet: widget.selectedPet,
                  initialTab: widget.initialTab,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
