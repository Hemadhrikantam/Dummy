import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/animated_row_column.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_text_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/static_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:dummy/features/profile/presentation/pages/premium_subscription.dart';
import 'package:dummy/features/profile/presentation/pages/profile_page.dart';
import 'package:dummy/features/profile/presentation/pages/support/support_page.dart';
import 'package:dummy/features/profile/presentation/pages/vet_near_me_page.dart';
import 'package:dummy/features/profile/presentation/widgets/profile_header.dart';
import 'package:dummy/features/profile/presentation/widgets/profile_options/pet_list_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/profile_options/profile_options_widget.dart';
import 'account_details/account_details_page.dart';

class ProfileOptionsPage extends StatelessWidget {
  const ProfileOptionsPage({super.key});
  static const routeName = '/ProfileOptionsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const ProfileOptionsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return MaterialBaseScreen(
          child: Column(
            children: [
              ProfileHeader(),
              Styles.gap20,
              PetListWidget(
                dashboardPetDetails: state.dashboardPetDetails,
                onPetSelected: (int index) {
                  final pet =
                      context
                          .read<DashboardBloc>()
                          .state
                          .dashboardPetDetails[index];
                  context.read<DashboardBloc>().add(
                    DashboardEvent.selectedPetId(pet.id),
                  );
                  context.read<DashboardBloc>().add(
                    DashboardEvent.selectedPet(pet),
                  );
                  context.read<DashboardBloc>().add(
                    DashboardEvent.petName(pet.name),
                  );
                  context.read<DashboardBloc>().add(
                    DashboardEvent.petImage(pet.imageUrl ?? ''),
                  );
                },
                selectedIndex:
                    state.selectedPet == null
                        ? 0
                        : state.dashboardPetDetails.indexOf(state.selectedPet!),
              ),
              Styles.gap20,
              Expanded(
                child: CustomCard(
                  child: AnimatedListView(
                    children: [
                      Column(
                        children: List.generate(
                          StaticWidget.settingsListData.length,
                          (i) {
                            final item = StaticWidget.settingsListData;
                            return Padding(
                              padding: Styles.edgeInsetsAll04,
                              child: SettingsItemsWidget(
                                leadingIcon: item[i].leadingIcon,
                                title: item[i].title,
                                onPressed: () async {
                                  if (item[i].title == AppText.petProfile) {
                                    context.pushNamed(ProfilePage.routeName);
                                  } else if (item[i].title ==
                                      AppText.petDairy) {
                                    context.pushNamed(PetDairyPage.routeName);
                                  } else if (item[i].title ==
                                      AppText.accountDetails) {
                                    context.push(AccountDetailsPage.route());
                                  } else if (item[i].title ==
                                      AppText.manageFamily) {
                                    BottomModels.manageFamilyMembersBottomSheet(
                                      context,
                                    );
                                  } else if (item[i].title ==
                                      AppText.premiumSubscription) {
                                    context.push(PremiumSubscription.route());
                                  } else if (item[i].title ==
                                      AppText.vetNearMe) {
                                    context.push(VetNearMePage.route());
                                  } else if (item[i].title == AppText.support) {
                                    context.push(SupportPage.route());
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      AppTextButton(
                        onPressed: () {
                          BottomModels.logoutBottomSheet(context);
                        },
                        name: AppText.logout,
                        textColor: AppColors.redText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
