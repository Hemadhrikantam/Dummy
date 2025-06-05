import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import '../../../../../core/widgets/app_graber.dart';
import '../save_cancel_widget.dart';

class AddMealForm extends StatefulWidget {
  const AddMealForm({super.key});

  @override
  State<AddMealForm> createState() => _AddMealFormState();
}

class _AddMealFormState extends State<AddMealForm> {
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
                          // Text(
                          //   AppText.notes,
                          //   style: context.textTheme.titleMedium?.copyWith(
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          Styles.gap6,
                          AppTextFormField(
                            hintText: AppText.enter,
                            borderRadius: Styles.borderRadiusCircular25,
                            onChanged: (value) {},
                            maxLines: 7,
                            heigth: 140,
                            headerText: AppText.notes,
                          ),
                          // const AppTextFormField(
                          //   hintText: '...',
                          //   maxLines: 3,
                          // ),
                          Styles.gap15,
                          Text(
                            AppText.media,
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Styles.gap6,
                          DottedBorderWidget(
                            onTap: () async {
                              final ImagePicker picker = ImagePicker();
                              final image = await picker.pickImage(
                                source: ImageSource.gallery,
                              );
                              if (image != null) {
                                setState(() {
                                  selectedImages.add(image);
                                });
                              }
                            },
                          ),
                          Styles.gap10,
                          if (selectedImages.isNotEmpty)
                            ...selectedImages.map((i) {
                              return Container(
                                margin: Styles.edgeInsetsOnlyH04,
                                padding: Styles.edgeInsetsAll04,
                                decoration: BoxDecoration(
                                  borderRadius: Styles.borderRadiusCircular08,
                                  border: Border.all(width: 1,color: AppColors.grey400)
                                ),
                                child: Row(
                                  children: [
                                    Image.file(
                                      File(i.path),
                                      height: 40,
                                      width: 40,
                                    ),
                                    Styles.gap10,
                                    Expanded(
                                      child: Text(
                                        path.basename(i.path),
                                        style: context.textTheme.titleSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: AppColors.grey600,
                                            ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          selectedImages.remove(i);
                                        });
                                      },
                                      child: AppAssestsImage(
                                        path: ImageResources.delete,
                                        height: 27,
                                        width: 27,
                                      ),
                                    ),
                                    Styles.gap4
                                  ],
                                ),
                              );
                            }).toList(),
                          
                          Styles.gap30,
                        ],
                      ),
                    ),
                  ),
                  Styles.gap10,
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
        );
      },
    );
  }
}
