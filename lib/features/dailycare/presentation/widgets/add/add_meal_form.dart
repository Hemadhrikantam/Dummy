import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/app_graber.dart';
import '../save_cancel_widget.dart';

class AddMealForm extends StatefulWidget {
  const AddMealForm({super.key});

  @override
  State<AddMealForm> createState() => _AddMealFormState();
}

class _AddMealFormState extends State<AddMealForm> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.80,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return Padding(
          padding: Styles.edgeInsetsAll12,
          child: ListView(
            controller: scrollController,
            padding: Styles.edgeInsetsAll15,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Styles.gap4,
                    AppGraber(),
                    Styles.gap20,
                    Text(
                      AppText.meal,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Styles.gap15,

                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            CustomDropdownSearch(
                              items: [],
                              title: AppText.timeOfMeal,
                            ),
                            Styles.gap10,
                            Text(
                              AppText.mealType,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Styles.gap6,
                            const AppTextFormField(hintText: '...'),
                            Styles.gap15,
                            Text(
                              AppText.notes,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Styles.gap6,
                            const AppTextFormField(
                              hintText: '...',
                              maxLines: 3,
                            ),
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
                          ],
                        ),
                      ),
                    ),

                    SaveCancelWidget(
                      onPressed: () {
                        context.pop();
                        BottomModels.addMealSuccessBottomSheet(context);
                      },
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
}
