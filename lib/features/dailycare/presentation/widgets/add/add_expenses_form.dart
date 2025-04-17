import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddExpensesForm extends StatefulWidget {
  const AddExpensesForm({super.key});

  @override
  State<AddExpensesForm> createState() => _AddExpensesFormState();
}

class _AddExpensesFormState extends State<AddExpensesForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.80,
      child: ListView(
        padding: Styles.edgeInsetsAll15,
        children: [
          Styles.gap4,
          AppGraber(),
          Styles.gap10,
          Text(
            AppText.expenses,
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
            AppText.category,
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
          DottedBorderWidget(),
          Styles.gap30,
          SaveCancelWidget(),
        ],
      ),
    );
  }
}
