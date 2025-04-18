import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/models/tab_model.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../../../../core/widgets/custom_tab_bar.dart';
import '../widgets/medications_tab.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

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
    return MaterialBaseScreen(
      child: Column(
        children: [
          CustomHeaderWidget(),
          Styles.gap30,
          CustomTabBar(
            tabController: _tabController,
            labelColor: AppColors.white,
            tabs: [
              TabModel(text: AppText.insights),
              TabModel(text: AppText.vaccinations),
              TabModel(text: AppText.medications),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [MedicationsTab(), MedicationsTab(), MedicationsTab()],
            ),
          ),
        ],
      ),
    );
  }
}
