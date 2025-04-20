import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/filter_button.dart';
import '../../pages/add_vaccination_page.dart';
import 'vaccines_list.dart';

class VaccinesTab extends StatelessWidget {
  const VaccinesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            Styles.gap10,
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [FilterButton()],
            ),
            Styles.gap20,
            VaccinesList(),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              context.push(AddVaccinationPage.route());
            },
            child: CircleAvatar(
              backgroundColor: AppColors.stepperColor,
              radius: 30,
              child: AppIcon(icon: Icons.add, color: AppColors.white, size: 40),
            ),
          ),
        ),
      ],
    );
  }
}
