import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PetListHomeWidget extends StatefulWidget {
  const PetListHomeWidget({super.key});

  @override
  State<PetListHomeWidget> createState() => _PetListHomeWidgetState();
}

class _PetListHomeWidgetState extends State<PetListHomeWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          CustomCard(
            padding: Styles.edgeInsetsAll10,
            borderRadius: Styles.borderRadiusCircular40,
            backgroundColor: AppColors.stepperColor,
            borderColor: AppColors.stepperColor,
            child: Icon(Icons.add, color: AppColors.white, size: 31),
          ),
          Styles.gap15,
          AppCustomListViewBuilder(
            padding: Styles.edgeInsetsZero,
            itemCount: 3,
            isExpand: true,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (context, i) {
              final isSelected = i == selectedIndex;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },
                child: Container(
                  decoration:
                      isSelected
                          ? BoxDecoration(
                            color: AppColors.buttonBackground,
                            borderRadius: const BorderRadius.only(
                              topLeft: Styles.radiusCircular60,
                              topRight: Styles.radiusCircular60,
                            ),
                          )
                          : null,
                  padding: Styles.edgeInsetsActivities,
                  child: CustomCard(
                    padding: Styles.edgeInsetsZero,
                    borderRadius: Styles.borderRadiusCircular40,
                    border: Border.all(width: 2, color: AppColors.white),
                    child: ClipRRect(
                      borderRadius: Styles.borderRadiusCircular40,
                      child: AppAssestsImage(
                        path: ImageResources.dog,
                        width: 50,
                        borderRadius: Styles.borderRadiusCircular40,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
