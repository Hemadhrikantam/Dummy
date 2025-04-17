import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';

import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddDewormingForm extends StatefulWidget {
  const AddDewormingForm({super.key});

  @override
  State<AddDewormingForm> createState() => _AddDewormingFormState();
}

class _AddDewormingFormState extends State<AddDewormingForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.90,
      child: ListView(
        padding: Styles.edgeInsetsAll15,
        children: [
          Styles.gap4,
          AppGraber(),
          Styles.gap10,
          Text(
            AppText.deworming,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap15,
          Text(
            AppText.date,
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
          Styles.gap10,
          Text(
            AppText.productName,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap6,
          const AppTextFormField(hintText: '...'),
          Styles.gap15,
          CustomDropdownSearch(items: [], title: AppText.frequency),
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
          Styles.gap15,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Text(
                  AppText.reminder,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Styles.gap10,
              Flexible(
                child: CustomDropdownSearch(items: [], title: '', label: 'IST'),
              ),
            ],
          ),

          Styles.gap6,
          Styles.gap10,
          const AppTextFormField(hintText: 'One Day before the due date'),
          Styles.gap10,
          Row(
            children: [
              Expanded(
                child: CustomDropdownSearch(items: [], title: '', label: '3'),
              ),
              Styles.gap10,
              Expanded(
                child: CustomDropdownSearch(items: [], title: '', label: '30'),
              ),
              Styles.gap10,
              Expanded(
                child: CustomDropdownSearch(items: [], title: '', label: 'PM'),
              ),
            ],
          ),
          Styles.gap15,
          Text(
            AppText.notes,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap6,
          const AppTextFormField(hintText: '...', maxLines: 3),
          Styles.gap15,
          Text(
            AppText.media,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap6,
          DottedBorderWidget(),
          Styles.gap30,
          SaveCancelWidget(),
        ],
      ),
    );
  }
}
