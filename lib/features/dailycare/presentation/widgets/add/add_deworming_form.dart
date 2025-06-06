import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';

import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/utils/bottom_models.dart';

class AddDewormingForm extends StatefulWidget {
  const AddDewormingForm({super.key});

  @override
  State<AddDewormingForm> createState() => _AddDewormingFormState();
}

class _AddDewormingFormState extends State<AddDewormingForm> {
  List<XFile> selectedImages = [];
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.80,
      minChildSize: 0.80,
      maxChildSize: 0.80,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.79,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.gap6,
                  AppGraber(),
                  Styles.gap15,
                  Text(
                    AppText.deworming,
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
                          _Date(),
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
                          CustomDropdownSearch(
                            items: [],
                            title: AppText.frequency,
                          ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  AppText.reminder,
                                  style: context.textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Styles.gap10,
                              Flexible(
                                child: CustomDropdownSearch(
                                  items: [],
                                  title: '',
                                  label: 'IST',
                                ),
                              ),
                            ],
                          ),

                          Styles.gap6,
                          Styles.gap10,
                          const AppTextFormField(
                            hintText: 'One Day before the due date',
                          ),
                          Styles.gap10,
                          Row(
                            children: [
                              Expanded(
                                child: CustomDropdownSearch(
                                  items: [],
                                  title: '',
                                  label: '3',
                                ),
                              ),
                              Styles.gap10,
                              Expanded(
                                child: CustomDropdownSearch(
                                  items: [],
                                  title: '',
                                  label: '30',
                                ),
                              ),
                              Styles.gap10,
                              Expanded(
                                child: CustomDropdownSearch(
                                  items: [],
                                  title: '',
                                  label: 'PM',
                                ),
                              ),
                            ],
                          ),
                          Styles.gap15,
                          AppTextFormField(
                            hintText: AppText.enter,
                            borderRadius: Styles.borderRadiusCircular25,
                            onChanged: (value) {},
                            maxLines: 7,
                            heigth: 140,
                            headerText: AppText.notes,
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
                  Styles.gap10,
                  SaveCancelWidget(
                    onPressed: () {
                      context.pop();
                      BottomModels.addDewormingSuccessBottomSheet(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Date extends StatefulWidget {
  const _Date();
  @override
  State<_Date> createState() => __Date();
}

class __Date extends State<_Date> {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return AppCustomDateField(
      selectedDate: date,
      onChange: (value) {
        setState(() {
          date = value;
        });
      },
    );
  }
}
