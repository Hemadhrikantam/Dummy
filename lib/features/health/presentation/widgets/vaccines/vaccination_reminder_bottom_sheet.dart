import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: Styles.edgeInsetsOnlyW15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
          Styles.gap10
        ],
      ),
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
