import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/app_graber.dart';

class VaccinationFilterBottomSheet extends StatefulWidget {
  const VaccinationFilterBottomSheet({super.key});

  @override
  State<VaccinationFilterBottomSheet> createState() =>
      _VaccinationFilterBottomSheet();
}

class _VaccinationFilterBottomSheet
    extends State<VaccinationFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return Padding(
          padding: Styles.edgeInsetsAll12,
          child: ListView(
            controller: scrollController,
            padding: Styles.edgeInsetsAll15,
            children: [
              Styles.gap4,
              AppGraber(),
              Styles.gap20,
              Text(
                AppText.filter,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Styles.gap15,
              Text(
                AppText.dateAdministered,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Styles.gap6,
              AppTextFormField(
                hintText: '...',
                readOnly: true,
                suffixIcon: Iconsax.calendar,
                onTap: () {},
              ),
              Styles.gap15,
              Text(
                AppText.duedate,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Styles.gap6,
              AppTextFormField(
                hintText: '...',
                readOnly: true,
                suffixIcon: Iconsax.calendar,
                onTap: () {},
              ),
              Styles.gap25,
              AppButton(name: Text(AppText.save, style: Styles.buttonStyle)),
            ],
          ),
        );
      },
    );
  }
}
