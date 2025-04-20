import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/app_text.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_dropdown.dart';
import '../../../../../core/widgets/custom_switch.dart';
import '../../../../../core/widgets/dotted_border_widget.dart';

part 'add_vaccination_form.dart';

class __VaccinationName extends StatelessWidget {
  const __VaccinationName();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.vaccinationName,
    );
  }
}

class __Company extends StatelessWidget {
  const __Company();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.company,
    );
  }
}

class __DateAdministered extends StatefulWidget {
  const __DateAdministered();

  @override
  State<__DateAdministered> createState() => __DateAdministeredState();
}

class __DateAdministeredState extends State<__DateAdministered> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: dateController,
      suffixIcon: Iconsax.calendar,
      readOnly: true,
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.dateAdministered,
      onTap: () {
        AppUtil.datePicker(context, startDate: DateTime(1900)).then((value) {
          if (value != null) {
            dateController.text = value;
          }
        });
      },
    );
  }
}

class __DueDate extends StatefulWidget {
  const __DueDate();

  @override
  State<__DueDate> createState() => __DueDateState();
}

class __DueDateState extends State<__DueDate> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: dateController,
      suffixIcon: Iconsax.calendar,
      readOnly: true,
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.duedate,
      onTap: () {
        AppUtil.datePicker(context, startDate: DateTime(1900)).then((value) {
          if (value != null) {
            dateController.text = value;
          }
        });
      },
    );
  }
}

class __Frequency extends StatelessWidget {
  const __Frequency();

  @override
  Widget build(BuildContext context) {
    return CustomDropdownSearch(
      title: AppText.frequency,
      items: [],
      onChanged: (value) {},
      label: AppText.select,
    );
  }
}

class __Remainder extends StatefulWidget {
  const __Remainder();

  @override
  State<__Remainder> createState() => __RemainderState();
}

class __RemainderState extends State<__Remainder> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppText.reminder,
          style: context.textTheme.labelLarge?.copyWith(
            color: AppColors.grey500,
          ),
        ),
        Styles.gap6,
        CustomSwitch(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
      ],
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
            Padding(
              padding: Styles.edgeInsetsOnlyH20,
              child: MandatoryFieldWidget(
                labelText: AppText.reminder,
                required: false,
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
            label: AppText.select,
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
    );
  }
}

class __Notes extends StatelessWidget {
  const __Notes();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      borderRadius: Styles.borderRadiusCircular25,
      onChanged: (value) {},
      maxLines: 7,
      heigth: 140,
      headerText: AppText.notes,
    );
  }
}

class __Media extends StatelessWidget {
  const __Media();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MandatoryFieldWidget(labelText: AppText.media, required: false),
        DottedBorderWidget(),
      ],
    );
  }
}

class AddVaccinationBtn extends StatelessWidget {
  const AddVaccinationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      name: Text(
        AppText.addVaccination,
        style: context.textTheme.titleSmall?.copyWith(
          color: AppColors.buttonTextColor,
        ),
      ),
    );
  }
}
