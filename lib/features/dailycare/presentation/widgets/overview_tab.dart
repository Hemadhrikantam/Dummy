import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_add_button.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_card_widget.dart';
import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  void _showAddBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),

      builder: (BuildContext context) {
        return const OverviewAddButton();
      },
    );
  }

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
              onPressed: () {
                _showAddBottomSheet(context);
              }, 
            ),
          ],
        ),
        Styles.gap15,

        CustomCard(
          child: AppCustomListViewBuilder(
            physics: NeverScrollableScrollPhysics(),
            isExpand: false,
            shrinkWrap: true,
            separatorBuilder: (context, i) => Styles.gap10,
            itemCount: 6,
            itemBuilder: (context, i) {
              return OverviewCard(
                iconPath: ImageResources.mealsicon,
                title: AppText.meals,
                subtitle: AppText.fiveloggedtoday,
                onTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
