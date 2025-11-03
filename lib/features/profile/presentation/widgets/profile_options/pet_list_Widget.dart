import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/profile/presentation/pages/add_pet/add_pet_page.dart';
import 'package:flutter/material.dart';

class PetListWidget extends StatelessWidget {
  const PetListWidget({
    super.key,
    required this.dashboardPetDetails,
    required this.onPetSelected,
    required this.selectedIndex,
  });

  final List<DashboardPetDetails> dashboardPetDetails;
  final int selectedIndex;
  final ValueChanged<int> onPetSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: dashboardPetDetails.length,
              separatorBuilder: (_, __) => Styles.gap10,
              itemBuilder: (context, i) {
                final isSelected = i == selectedIndex;
                return GestureDetector(
                  onTap: () => onPetSelected(i),
                  child: CustomCard(
                    padding: Styles.edgeInsetsAll04,
                    borderRadius: Styles.borderRadiusCircular50,
                    backgroundColor:
                        isSelected
                            ? AppColors.buttonBackground
                            : Colors.transparent,
                    border: Border.all(
                      width: 4,
                      color:
                          isSelected
                              ? AppColors.stepperColor
                              : Colors.transparent,
                    ),
                    child: Padding(
                      padding: Styles.edgeInsetsZero,
                      child: ClipRRect(
                        borderRadius: Styles.borderRadiusCircular50,
                        child:
                            (dashboardPetDetails[i].imageUrl ?? '0') != '0'
                                ? AppNetworkImage(
                                  borderRadius: Styles.borderRadiusCircular50,
                                  url: dashboardPetDetails[i].imageUrl ?? '',
                                  width: 64,
                                  height: 64,
                                )
                                : Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: Styles.borderRadiusCircular50,
                                  ),
                                ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Styles.gap10,

          // Add button
          CustomCard(
            onTap: () {
              context.push(AddPetPage.route());
            },
            padding: Styles.edgeInsetsAll16,
            borderRadius: Styles.borderRadiusCircular50,
            backgroundColor: AppColors.stepperColor,
            child: Icon(Icons.add, color: AppColors.white, size: 31),
          ),
        ],
      ),
    );
  }
}
