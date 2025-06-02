import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/features/health/presentation/pages/add_vaccination_page.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:flutter/material.dart';

import 'vaccines_card.dart';

class VaccinesList extends StatelessWidget {
  const VaccinesList({super.key});

  @override
  Widget build(BuildContext context) {
    if (false) {
      return EmptyListPage(
        imagePath: ImageResources.noMedication,
        title: AppText.letKeepSafe,
        subTitle: AppText.trackCoreAndBooster,
        onPressed: () {
          context.push(AddVaccinationPage.route());
        },
        buttonName: AppText.addFirstVaccination,
      );
    } else {
      return AppCustomListViewBuilder(
        itemCount: 10,
        isExpand: false,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, i) => Styles.gap10,
        itemBuilder: (BuildContext context, int i) {
          return VaccinesCard();
        },
      );
    }
  }
}
