import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_custom_check_box.dart';
import '../../../../core/widgets/filter_button.dart';
import 'medication_card.dart';

class MedicationsTab extends StatelessWidget {
  const MedicationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        MedicationsCard(),
      ],
    );
  }
}

