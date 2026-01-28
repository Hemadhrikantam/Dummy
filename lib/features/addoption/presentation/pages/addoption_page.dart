import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/addoption/presentation/bloc/adoption/adoption_bloc.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/constant/styles.dart';
import '../../../../core/utils/bottom_models.dart';
import '../../../../core/widgets/app_icon.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import '../../../dailycare/presentation/widgets/overview_header_widget.dart';
import '../widgets/adoption_tabbar_view.dart';

class AddoptionPage extends StatefulWidget {
  const AddoptionPage({super.key});

  @override
  createState() => _AddoptionPage();
}

class _AddoptionPage extends State<AddoptionPage> {
  String selectedTab = 'My Listing';
  final tabs = ['My Listing', 'All Pets'];
  String _query = '';
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<AdoptionBloc>().add(AdoptionEvent.adoptions());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [
          CustomHeaderWidget(
            petImage:
                context.read<DashboardBloc>().state.selectedPet?.imageUrl ?? '',
          ),
          Styles.gap20,
          Row(
            children: [
              Expanded(
                child: SearchButton(
                  hintText: AppText.search,
                  onChanged: (value) {
                    setState(() => _query = value.trim());
                  },
                ),
              ),
              // Styles.gap10,
              // CircleAvatar(
              //   radius: 25,
              //   backgroundColor: AppColors.stepperColor,
              //   child: AppIcon(icon: Icons.search, color: AppColors.white),
              // ),
            ],
          ),
          Styles.gap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // FilterButton(),
              AppButton(
                height: 42,
                showShadow: false,
                name: Text(
                  AppText.add,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: AppColors.buttonTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                width: 90,
                onPressed: () {
                  BottomModels.addAdoptionBottomSheet(context);
                },
              ),
            ],
          ),
          Styles.gap10,
          OverviewHeader(
            tabs: tabs,
            selectedTab: selectedTab,
            isExpanded: true,
            onTabSelected: (tab) => setState(() => selectedTab = tab),
          ),
          Styles.gap10,
          Expanded(child: AdoptiontabbarView(tab: selectedTab, query: _query)),
        ],
      ),
    );
  }
}
