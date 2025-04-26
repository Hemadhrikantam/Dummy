import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:iconsax/iconsax.dart';

import '../../../profile/presentation/widgets/add_pet/add_pet_form.dart';
import 'notification_permission_page.dart';

class PetInfoPage extends StatefulWidget {
  const PetInfoPage({super.key});
  static const routeName = '/PetInfoPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetInfoPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<PetInfoPage> createState() => _PetInfoPageState();
}

class _PetInfoPageState extends State<PetInfoPage> {
  DateTime? selectedDate;
  final TextEditingController _dobController = TextEditingController();
  void _pickDate() {
    CupertinoRoundedDatePicker.show(
      context,
      fontFamily: "Mali",
      textColor: Colors.black,
      background: Colors.white,
      borderRadius: 16,
      initialDatePickerMode: CupertinoDatePickerMode.date,
      onDateTimeChanged: (newDateTime) {
        setState(() {
          selectedDate = newDateTime;
          _dobController.text = _formatDate(newDateTime);
        });
      },
    );
  }

  String _formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/"
        "${date.month.toString().padLeft(2, '0')}/"
        "${date.year}";
  }

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StepperWidget(currentScreenIndex: 3),
          Styles.gap20,
          Text(
            AppText.tellUsYourPetType,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap15,
          Text(AppText.theMoreAboutPet, style: context.textTheme.titleSmall),
          Styles.gap30,
          AppTextFormField(
            controller: _dobController,
            headerText: AppText.dateOfBirth,
            onTap: _pickDate,
            readOnly: true,
            suffixIcon: Iconsax.calendar,
          ),
          Styles.gap20,
          CustomDropdownSearch(items: [], title: AppText.breed),
          Styles.gap20,
          CustomDropdownSearch(items: [], title: AppText.personalitytags),
          Row(
            children: [
              PersonalityTagCard(),
              Styles.gap10,
              PersonalityTagCard(),
              Styles.gap10,
              PersonalityTagCard(),
            ],
          ),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(NotificationPermissionPage.routeName);
            },
          ),
          Styles.gap30,
        ],
      ),
    );
  }
}
