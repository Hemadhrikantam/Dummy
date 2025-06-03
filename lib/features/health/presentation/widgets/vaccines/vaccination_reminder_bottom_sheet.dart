import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/app_graber.dart';

class VaccinationReminderBottomSheet extends StatefulWidget {
  const VaccinationReminderBottomSheet({super.key});

  @override
  State<VaccinationReminderBottomSheet> createState() =>
      _VaccinationReminderBottomSheet();
}

class _VaccinationReminderBottomSheet
    extends State<VaccinationReminderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            Styles.gap6,
            AppGraber(),
            Styles.gap16,
            __Reminder(),
            Styles.gap25,
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    showShadow: false,
                    backgroundColor: Colors.white,
                    name: Text(AppText.clearFilter, style: Styles.buttonStyle),
                  ),
                ),
                Styles.gap10,
                Expanded(
                  child: AppButton(
                    name: Text(AppText.save, style: Styles.buttonStyle),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class __Reminder extends StatelessWidget {
  const __Reminder();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: Styles.edgeInsetsOnlyH20,
                child: Text(
                  AppText.reminder,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Styles.gap10,
            Expanded(
              child: CustomDropdownSearch(
                title: '',
                items: [],
                onChanged: (value) {},
                label: AppText.select,
              ),
            ),
          ],
        ),
        __Tablets(),
        Styles.gap10,
        __Time(),
      ],
    );
  }
}

class __Tablets extends StatelessWidget {
  const __Tablets();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDropdownSearch(
            title: '',
            items: [],
            onChanged: (value) {},
            label: AppText.select,
          ),
        ),
      ],
    );
  }
}

class __Time extends StatelessWidget {
  const __Time();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDropdownSearch(
            title: '',
            items: [],
            onChanged: (value) {},
            label: 'HH',
          ),
        ),
        Styles.gap10,
        Expanded(
          child: CustomDropdownSearch(
            title: '',
            items: [],
            onChanged: (value) {},
            label: 'MM',
          ),
        ),
        Styles.gap10,
        Expanded(
          child: CustomDropdownSearch(
            title: '',
            items: [],
            onChanged: (value) {},
            label: 'AM',
          ),
        ),
      ],
    );
  }
}
