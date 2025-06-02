import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/pages/add_medication_page.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/health/presentation/widgets/medication/medication_card.dart';
import 'package:flutter/material.dart';

class MedicationList extends StatelessWidget {
  const MedicationList({super.key});

  @override
  Widget build(BuildContext context) {
    if (false) {
      return EmptyListPage(
        title: AppText.doommiHelpsKeep,
        imagePath: ImageResources.noMedication,
        subTitle: AppText.trackMedicationsTo,
        onPressed: () {
          context.push(AddMedicationPage.route());
        },
        buttonName: AppText.addFirstMedication,
      );
    } else {
      return AppCustomListViewBuilder(
        itemCount: 10,
        isExpand: false,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, i) => Styles.gap10,
        itemBuilder: (BuildContext context, int i) {
          return MedicationsCard();
        },
      );
    }
  }
}
