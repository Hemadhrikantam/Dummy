import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/overview_card_widget.dart';
import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppButton(
              name: Text(
                AppText.add,
                style: context.textTheme.titleSmall?.copyWith(
                  color: AppColors.buttonTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              width: 90,
            ),
          ],
        ),
        Styles.gap10,
        CustomCard(
          child: AppCustomListViewBuilder(
            physics: NeverScrollableScrollPhysics(),
            isExpand: false,
            shrinkWrap: true,
            separatorBuilder: (context, i) => Styles.gap10,
            itemCount: 6,
            itemBuilder: (context, i) {
              return OverviewCard(
                iconPath: 'assets/icons/meals.png',
                title: 'Meals',
                subtitle: '5 logged today', // Update as needed
                onTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
