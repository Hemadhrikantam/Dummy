import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import 'adoption_card.dart';

class AdoptiontabbarView extends StatelessWidget {
  const AdoptiontabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.transparent,
      backgroundColor: AppColors.background,
      child: AppCustomListViewBuilder(
        itemCount: 10,
        isExpand: false,
        shrinkWrap: true,
        separatorBuilder: (context, i) => Styles.gap10,
        itemBuilder: (BuildContext context, int i) {
          return AdoptionCard();
        },
      ),
    );
  }
}
