import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/styles.dart';
import '../../../../core/models/tab_model.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../../../../core/widgets/custom_tab_bar.dart';
import '../widgets/insight/insight_tab.dart';
import '../widgets/medication/medications_tab.dart';
import '../widgets/vaccines/vaccines_tab.dart';

class HealthPage extends StatefulWidget {
  final DashboardPetDetails selectedPet;
  const HealthPage({super.key, required this.selectedPet});

  @override
  createState() => _HealthPage();
}

class _HealthPage extends State<HealthPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(__listener);
  }

  void __listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return MaterialBaseScreen(
          child: Column(
            children: [
              CustomHeaderWidget(petImage: state.petImage),
              Styles.gap30,
              CustomTabBar(
                tabController: _tabController,
                tabs: [
                  TabModel(text: AppText.insights),
                  TabModel(text: AppText.vaccination),
                  TabModel(text: AppText.medications),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    InsightTab(selectedPet: widget.selectedPet),
                    VaccinesTab(),
                    MedicationsTab(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
