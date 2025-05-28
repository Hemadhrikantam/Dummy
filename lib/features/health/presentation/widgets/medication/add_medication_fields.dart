import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_check_box.dart';
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

part 'add_medication_form.dart';

class __TabletName extends StatelessWidget {
  const __TabletName();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.tabletName,
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

class __StartDate extends StatefulWidget {
  const __StartDate();

  @override
  State<__StartDate> createState() => __StartDateState();
}

class __StartDateState extends State<__StartDate> {
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
      headerText: AppText.startDate,
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

class __EndDate extends StatefulWidget {
  const __EndDate();

  @override
  State<__EndDate> createState() => __EndDateState();
}

class __EndDateState extends State<__EndDate> {
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
      headerText: AppText.endDate,
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

class __Dosage extends StatelessWidget {
  const __Dosage();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // MandatoryFieldWidget(labelText: AppText.dosage, required: false),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: AppTextFormField(
                hintText: AppText.enter,
                onChanged: (value) {},
                headerText: AppText.dosage,
              ),
            ),
            Styles.gap10,
            __Tablets(),
          ],
        ),
      ],
    );
  }
}

class __Tablets extends StatelessWidget {
  const __Tablets();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomDropdownSearch(
        title: '',
        items: [],
        onChanged: (value) {},
        label: AppText.select,
      ),
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

class __Morning extends StatefulWidget {
  const __Morning();

  @override
  State<__Morning> createState() => ___MorningState();
}

class ___MorningState extends State<__Morning> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          label: '',
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Expanded(
          child: CustomCard(
            padding: Styles.edgeInsetsAll06,
            borderRadius: Styles.borderRadiusCircular50,
            borderColor: AppColors.black.withOpacity(.1),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    AppText.morning,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Styles.gap4,
                Expanded(
                  flex: 5,
                  child: CustomDropdownSearch(
                    title: '',
                    items: [],
                    onChanged: (value) {},
                    label: AppText.hh,
                  ),
                ),
                Styles.gap4,
                Expanded(
                  flex: 5,
                  child: CustomDropdownSearch(
                    title: '',
                    items: [],
                    onChanged: (value) {},
                    label: AppText.mm,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class __Afternoon extends StatefulWidget {
  const __Afternoon();

  @override
  State<__Afternoon> createState() => ___AfternoonState();
}

class ___AfternoonState extends State<__Afternoon> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          label: '',
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Expanded(
          child: CustomCard(
            padding: Styles.edgeInsetsAll06,
            borderRadius: Styles.borderRadiusCircular50,
            borderColor: AppColors.black.withOpacity(.1),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    AppText.afternoon,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Styles.gap4,
                Expanded(
                  flex: 5,
                  child: CustomDropdownSearch(
                    title: '',
                    items: [],
                    onChanged: (value) {},
                    label: AppText.hh,
                  ),
                ),
                Styles.gap4,
                Expanded(
                  flex: 5,
                  child: CustomDropdownSearch(
                    title: '',
                    items: [],
                    onChanged: (value) {},
                    label: AppText.mm,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class __Night extends StatefulWidget {
  const __Night();

  @override
  State<__Night> createState() => ___NightState();
}

class ___NightState extends State<__Night> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          label: '',
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Expanded(
          child: CustomCard(
            padding: Styles.edgeInsetsAll06,
            borderRadius: Styles.borderRadiusCircular50,
            borderColor: AppColors.black.withOpacity(.1),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    AppText.night,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Styles.gap4,
                Expanded(
                  flex: 5,
                  child: CustomDropdownSearch(
                    title: '',
                    items: [],
                    onChanged: (value) {},
                    label: AppText.hh,
                  ),
                ),
                Styles.gap4,
                Expanded(
                  flex: 5,
                  child: CustomDropdownSearch(
                    title: '',
                    items: [],
                    onChanged: (value) {},
                    label: AppText.mm,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TotalDosage extends StatelessWidget {
  const TotalDosage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Styles.edgeInsetsAll10,
      decoration: BoxDecoration(
        borderRadius: Styles.borderRadiusCircular20,
        color: AppColors.stepperColor.withOpacity(.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.totalDosage,
            style: context.textTheme.labelLarge?.copyWith(
              color: AppColors.grey500,
            ),
          ),
          Styles.gap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 Tablets /\nServing',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.stepperColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DayWithTimeWidget(
                    day: '${AppText.morning} ',
                    time: '- 3.30 PM IST',
                  ),
                  DayWithTimeWidget(
                    day: '${AppText.afternoon} ',
                    time: '- 3.30 PM IST',
                  ),
                  DayWithTimeWidget(
                    day: '${AppText.night} ',
                    time: '- 3.30 PM IST',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayWithTimeWidget extends StatelessWidget {
  const DayWithTimeWidget({super.key, required this.day, required this.time});
  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: day,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: time,
            style: context.textTheme.labelMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
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
        Styles.gap10,
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
