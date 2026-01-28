import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/profile/presentation/pages/add_pet/add_pet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/bottom_models.dart';
import '../../../profile/presentation/bloc/account/account_bloc.dart';

class PetListHomeWidget extends StatelessWidget {
  const PetListHomeWidget({
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
      height: 65,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: dashboardPetDetails.length,
              separatorBuilder: (_, __) => Styles.gap6,
              itemBuilder: (context, i) {
                final isSelected = i == selectedIndex;
                return GestureDetector(
                  onTap: () => onPetSelected(i),
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
                    padding:
                        Styles.edgeInsetsActivities +
                        const EdgeInsets.only(top: 8),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CustomCard(
                        padding: Styles.edgeInsetsAll02,
                        borderRadius: Styles.borderRadiusCircular40,
                        border: Border.all(width: 2, color: AppColors.white),
                        child: ClipRRect(
  borderRadius: Styles.borderRadiusCircular40,
  child: (dashboardPetDetails[i].imageUrl == null ||
          dashboardPetDetails[i].imageUrl!.isEmpty)
      ? AppAssestsImage(
          borderRadius: Styles.borderRadiusCircular40,
          path: ImageResources.appLogo,
          height: 45,
          width: 45,
        )
      : AppNetworkImage(
          url: dashboardPetDetails[i].imageUrl!,
          width: 50,
          borderRadius: Styles.borderRadiusCircular40,
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
          BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) {
              return (state.accountDetails?.account.subscriptionType ==
                              'premium' &&
                          (state.accountDetails?.pets ?? []).length < 3) ||
                      state.accountDetails?.account.subscriptionType == 'free'
                  ? CustomCard(
                    padding: Styles.edgeInsetsAll10,
                    borderRadius: Styles.borderRadiusCircular40,
                    backgroundColor: AppColors.stepperColor,
                    borderColor: AppColors.stepperColor,
                    onTap: () {
                      if (state.accountDetails?.account.subscriptionType ==
                              'free' &&
                          (state.accountDetails?.pets ?? []).length == 1) {
                        BottomModels.needPremiumBottomSheet(context);
                        return;
                      }
                      context.push(AddPetPage.route());
                    },
                    child: Icon(Icons.add, color: AppColors.white, size: 31),
                  )
                  : Styles.sizedBox;
            },
          ),
        ],
      ),
    );
  }
}
