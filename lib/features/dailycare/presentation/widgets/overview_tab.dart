import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_card_widget.dart';
import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OverviewCard(
                  iconPath: ImageResources.mealsicon,
                  title: AppText.meals,
                  subtitle: AppText.fiveloggedtoday,
                  onTap: () {},
                ),
                Styles.gap10,
                OverviewCard(
                  iconPath: ImageResources.walksicon,
                  title: AppText.walks,
                  subtitle: AppText.halfLoggedToday,
                  onTap: () {},
                ),
                Styles.gap10,
                OverviewCard(
                  iconPath: ImageResources.groomingicon,
                  title: AppText.grooming,
                  subtitle: AppText.lastSessionOn + "03/15/2025",
                  onTap: () {},
                ),
                Styles.gap10,
                OverviewCard(
                  iconPath: ImageResources.dewormingicon,
                  title: AppText.deworming,
                  subtitle: AppText.dueOn + "03/20/2025",
                  onTap: () {},
                ),
                Styles.gap10,
                OverviewCard(
                  iconPath: ImageResources.expensesicon,
                  title: AppText.expenses,
                  subtitle: AppText.fiftySpentThisMonth,
                  onTap: () {},
                ),
              ],
            ),

            // AppCustomListViewBuilder(
            //   physics: NeverScrollableScrollPhysics(),
            //   isExpand: false,
            //   shrinkWrap: true,
            //   separatorBuilder: (context, i) => Styles.gap10,
            //   itemCount: 6,
            //   itemBuilder: (context, i) {
            //     return OverviewCard(
            //       iconPath: ImageResources.mealsicon,
            //       title: AppText.meals,
            //       subtitle: AppText.fiveloggedtoday,
            //       onTap: () {},
            //     );
            //   },
            // ),
          ),
        ),
      ],
    );
  }
}
