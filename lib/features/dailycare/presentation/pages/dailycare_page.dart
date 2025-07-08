// dailycare_page.dart
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/features/dailycare/presentation/widgets/daily_care_overview_section.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/base_screen.dart';

class DailycarePage extends StatefulWidget {
  final DashboardPetDetails selectedPet;
  const DailycarePage({super.key, required this.selectedPet});

  @override
  State<DailycarePage> createState() => _DailycarePage();
}

class _DailycarePage extends State<DailycarePage> {
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
                child:
                    (state.selectedPet == null)
                        ? SizedBox()
                        : DailyCareOverviewSection(
                          selectedPet: state.selectedPet!,
                        ),
              ),
            ],
          ),
        );
      },
    );
  }
}
