import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/constent/app_text.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/utils/bottom_models.dart';
import '../../../../core/widgets/app_icon.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import '../../../../core/widgets/filter_button.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [
          CustomHeaderWidget(),
          Styles.gap20,
          Row(
            children: [
              Expanded(child: SearchButton(hintText: AppText.search)),
              Styles.gap10,
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.stepperColor,
                child: AppIcon(icon: Icons.search, color: AppColors.white),
              ),
            ],
          ),
          Styles.gap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilterButton(),
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
          Expanded(child: AdoptiontabbarView()),
        ],
      ),
    );
  }
}
