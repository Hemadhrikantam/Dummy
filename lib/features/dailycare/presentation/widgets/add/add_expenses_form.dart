import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/utils/bottom_models.dart';

class AddExpensesForm extends StatefulWidget {
  const AddExpensesForm({super.key});

  @override
  State<AddExpensesForm> createState() => _AddExpensesFormState();
}

class _AddExpensesFormState extends State<AddExpensesForm> {
  List<XFile> selectedImages = [];
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.70,
      minChildSize: 0.70,
      maxChildSize: 0.80,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.69,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.gap6,
                  AppGraber(),
                  Styles.gap15,
                  Text(
                    AppText.expenses,
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
                      BottomModels.addExpensesSuccessBottomSheet(context);
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
