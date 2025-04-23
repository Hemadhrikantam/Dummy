import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/app_text.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_dropdown.dart';
import '../../../../../core/widgets/dotted_border_widget.dart';
import '../../../dailycare/presentation/widgets/save_cancel_widget.dart';

part 'add_adoption_fields.dart';

class AddAdoptionForm extends StatefulWidget {
  const AddAdoptionForm({super.key});

  @override
  State<AddAdoptionForm> createState() => _AddAdoptionFormState();
}

class _AddAdoptionFormState extends State<AddAdoptionForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.90,
      child: ListView(
        padding: Styles.edgeInsetsAll15,
        children: [
          Styles.gap10,
          Text(
            AppText.addAdoptionQuery,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap15,
          __Name(),
          __Age(),
          __PetType(),
          __Breed(),
          Styles.gap10,
          __Address(),
          Styles.gap10,
          __Phone(),
          Styles.gap10,
          __Email(),
          Styles.gap10,
          __Description(),
          Styles.gap10,
          __Media(),
          Styles.gap30,
          SaveCancelWidget(),
        ],
      ),
    );
  }
}
