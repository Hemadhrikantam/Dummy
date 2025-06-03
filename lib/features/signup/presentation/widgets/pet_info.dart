import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/custom_multi_dropdown.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/profile/presentation/widgets/add_pet/add_pet_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../bloc/register/register_bloc.dart';

class PetInfo extends StatefulWidget {
  const PetInfo({super.key, this.onNext});
  final VoidCallback? onNext;

  @override
  State<StatefulWidget> createState() => _PetInfoState();
}

class _PetInfoState extends State<PetInfo> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<RegisterBloc>().add(RegisterEvent.initialization());
    });
  }

  DateTime? selectedDate;
  int weight = 1;
  final TextEditingController _dobController = TextEditingController();

  void _pickDate() {
    DateTime tempPickedDate = DateTime.now();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Styles.gap4,
              AppGraber(),
              Styles.gap10,
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  AppText.dateOfBirth,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Styles.gap10,
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: selectedDate ?? DateTime(2000, 1, 1),
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (DateTime dateTime) {
                    tempPickedDate = dateTime;
                  },
                ),
              ),
              Styles.gap10,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: AppOutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        name: Text(
                          AppText.cancel,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                    Styles.gap10,
                    Expanded(
                      child: AppButton(
                        onPressed: () {
                          setState(() {
                            selectedDate = tempPickedDate;
                            _dobController.text = _formatDate(tempPickedDate);
                          });
                          Navigator.pop(context);
                        },
                        name: Text(
                          AppText.save,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _pickWeight() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return SizedBox(
          height: 300,
          child: WeightPickerBody(
            weight: weight,
            onSave: (value) {
              setState(() {
                weight = value;
              });
            },
          ),
        );
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
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return state.initStatus.loading
            ? LoadingWidget.circularProgressIndicatorCenter
            : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '${AppText.tellUsYourPetType} ${state.petType.name}!',
                  style: context.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                Styles.gap15,
                Text(
                  AppText.theMoreAboutPet,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Styles.gap30,
                AppTextFormField(
                  controller: _dobController,
                  headerText: AppText.dateOfBirth,
                  onTap: _pickDate,
                  readOnly: true,
                  suffixIcon: Iconsax.calendar,
                ),
                Styles.gap20,
                CustomDropdownSearch(
                  items: state.catBreeds,
                  title: AppText.breed,
                ),
                Styles.gap20,
                CustomMultiDropdownSearch(
                  items: state.personalityTags,
                  title: AppText.personalitytags,
                ),
                Row(
                  children: [
                    PersonalityTagCard(),
                    Styles.gap10,
                    PersonalityTagCard(),
                    Styles.gap10,
                    PersonalityTagCard(),
                  ],
                ),
                Styles.gap20,
                AppTextFormField(
                  controller: TextEditingController(text: weight.toString()),
                  headerText: AppText.weight,
                  onTap: _pickWeight,
                  readOnly: true,
                  suffixIconColor: Colors.grey.shade700,
                  suffixIcon: Icons.keyboard_arrow_down,
                ),
                Styles.gap30,
                AppButton(
                  name: Text(
                    AppText.continueBtn,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                  onPressed: () {
                    widget.onNext?.call();
                  },
                ),
                Styles.gap30,
              ],
            );
      },
    );
  }
}

class WeightPickerBody extends StatefulWidget {
  const WeightPickerBody({
    super.key,
    required this.weight,
    required this.onSave,
  });
  final int weight;
  final Function(int) onSave;
  @override
  State<WeightPickerBody> createState() => _WeightPickerBodyState();
}

class _WeightPickerBodyState extends State<WeightPickerBody> {
  int weight = 1;
  @override
  void initState() {
    super.initState();
    weight = widget.weight;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Styles.gap4,
        AppGraber(),
        Styles.gap10,
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.weight,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 120,
                child: CustomDropdownSearch(items: [], title: ''),
              ),
            ],
          ),
        ),
        Styles.gap10,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    weight -= 1;
                  });
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(167, 90, 29, 0.19), // RGBA equivalent
                    borderRadius: BorderRadius.circular(8), // 8px border radius
                  ),
                  child: Icon(Icons.remove, color: AppColors.buttonTextColor),
                ),
              ),
              Styles.gap4,
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA), // RGBA equivalent
                  borderRadius: BorderRadius.circular(8), // 8px border radius
                ),
                child: Center(
                  child: Text(
                    "$weight",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff5E5E5E),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Styles.gap4,
              GestureDetector(
                onTap: () {
                  setState(() {
                    weight += 1;
                  });
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(167, 90, 29, 0.19), // RGBA equivalent
                    borderRadius: BorderRadius.circular(8), // 8px border radius
                  ),
                  child: Icon(Icons.add, color: AppColors.buttonTextColor),
                ),
              ),
            ],
          ),
        ),
        Styles.gap10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: AppOutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  name: Text(
                    AppText.cancel,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ),
              ),
              Styles.gap10,
              Expanded(
                child: AppButton(
                  onPressed: () {
                    widget.onSave(weight);
                    Navigator.pop(context);
                  },
                  name: Text(
                    AppText.save,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
