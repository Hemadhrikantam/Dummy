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
      height: 68,
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
                    padding: Styles.edgeInsetsZero,
                    borderRadius: Styles.borderRadiusCircular10,
                    backgroundColor:
                        isSelected ? AppColors.buttonBackground : null,
                    border: Border.all(
                      width: 2,
                      color: isSelected
                          ? AppColors.buttonBackground
                          : AppColors.stepperColor,
                    ),
                    child: Padding(
                      padding: Styles.edgeInsetsAll02,
                      child: AppNetworkImage(
                        borderRadius: Styles.borderRadiusCircular08,
                      url: dashboardPetDetails[i].petImage.petImage,
                      width: 64,
                      height: 64,
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
            borderRadius: Styles.borderRadiusCircular08,
            backgroundColor: AppColors.stepperColor,
            child: Icon(Icons.add, color: AppColors.white, size: 31),
          ),
        ],
      ),
    );
  }
}
