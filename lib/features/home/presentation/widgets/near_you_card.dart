import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/home/presentation/widgets/clinic_card.dart';
import 'package:flutter/material.dart';

import '../../../dailycare/presentation/widgets/overview_header_widget.dart';

class NearYouCard extends StatefulWidget {
  const NearYouCard({super.key});

  @override
  State<NearYouCard> createState() => _NearYouCardState();
}

class _NearYouCardState extends State<NearYouCard> {
  String selectedTab = 'Clinics';
  final tabs = ['Clinics', 'Stores'];
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.background,
      borderColor: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.nearYou,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Styles.gap10,
          OverviewHeader(
            tabs: tabs,
            selectedTab: selectedTab,
            isExpanded: true,
            onTabSelected: (tab) => setState(() => selectedTab = tab),
          ),
          Styles.gap10,
          AppCustomListViewBuilder(
            itemCount: 10,
            isExpand: false,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (BuildContext context, int i) {
              return ClinicCard();
            },
          ),
        ],
      ),
    );
  }
}
