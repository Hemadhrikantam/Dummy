import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/pages/add_vaccination_page.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:flutter/material.dart';

import 'adoption_card.dart';

class AdoptiontabbarView extends StatelessWidget {
  const AdoptiontabbarView({super.key, required this.tab});
  final String tab;
  @override
  Widget build(BuildContext context) {
    if (true) {
      return EmptyListPage(
        imagePath: ImageResources.noAdoption,
        title: AppText.nolistingsyet,
        subTitle: AppText.helppetfindahome,
        onPressed: () {
          BottomModels.addAdoptionBottomSheet(context);
        },
        buttonName: AppText.addPetAdoption,
      );
    } else {
      return CustomCard(
        borderColor: AppColors.transparent,
        backgroundColor: AppColors.background,
        child: AppCustomListViewBuilder(
          itemCount: 10,
          isExpand: false,
          shrinkWrap: true,
          separatorBuilder: (context, i) => Styles.gap10,
          itemBuilder: (BuildContext context, int i) {
            return AdoptionCard(isAllPet: tab == 'All Pets');
          },
        ),
      );
    }
  }
}
