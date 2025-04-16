import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';

import 'package:dummy/core/widgets/buttons/app_button.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddGroomingForm extends StatefulWidget {
  const AddGroomingForm({super.key});

  @override
  State<AddGroomingForm> createState() => _AddGroomingFormState();
}

class _AddGroomingFormState extends State<AddGroomingForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.gap10,
          Text(
            AppText.grooming,
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
          Styles.gap15,
          Text(
            AppText.type,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap6,
          const AppTextFormField(hintText: '...'),
          Styles.gap10,

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
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey400,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: Styles.edgeInsetsAll20,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_photo_alternate,
                  color: AppColors.buttonBackground,
                ),
                Styles.gap6,
                Text(
                  AppText.tapHereToAddMedia,
                  style: const TextStyle(color: AppColors.buttonTextColor),
                ),
              ],
            ),
          ),
          Styles.gap25,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: AppButton(
                  name: Text(AppText.cancel),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Styles.gap10,
              Expanded(
                child: AppButton(
                  name: Text(AppText.save),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
