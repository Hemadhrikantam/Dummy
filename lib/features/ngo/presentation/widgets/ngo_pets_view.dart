import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/ngo/presentation/bloc/ngo_home/ngo_home_bloc.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:dummy/features/profile/presentation/pages/ngo_profile_options_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/constant/styles.dart';
import '../../../../core/utils/bottom_models.dart';
import '../../../../core/widgets/app_icon.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import '../../../../core/widgets/filter_button.dart';
import '../../../dailycare/presentation/widgets/overview_header_widget.dart';

class NgoPetsView extends StatefulWidget {
  const NgoPetsView({super.key});

  @override
  createState() => _NgoPetsView();
}

class _NgoPetsView extends State<NgoPetsView> {
  String selectedTab = 'My Listing';
  final tabs = ['My Listing', 'All Pets'];

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        children: [
          BlocBuilder<NgoHomeBloc, NgoHomeState>(
            builder: (context, state) {
              return CustomHeaderWidget(
                petImage: state.profile?.logoUrl ?? '',
                onProfileTap: () {
                  context.pushNamed(NgoProfileOptionsPage.routeName);
                },
              );
            },
          ),
          Styles.gap30,
          Row(
            children: [
              Expanded(child: SearchButton(hintText: AppText.search)),
              Styles.gap10,
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.stepperColor,
                child: AppIcon(icon: Icons.search, color: AppColors.white),
              ),
            ],
          ),
          Styles.gap10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilterButton(),
              AppButton(
                name: Text(
                  AppText.add,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: AppColors.buttonTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                width: 90,
                onPressed: () {
                  BottomModels.addListingBottomSheet(context);
                },
              ),
            ],
          ),
          Styles.gap20,
          OverviewHeader(
            tabs: tabs,
            selectedTab: selectedTab,
            isExpanded: true,
            onTabSelected: (tab) => setState(() => selectedTab = tab),
          ),
          Styles.gap20,
          Expanded(
            child:
                selectedTab != 'All Pets'
                    ? BlocBuilder<NgoHomeBloc, NgoHomeState>(
                      builder: (context, state) {
                        return state.listing.isEmpty
                            ? EmptyListPage(
                              imagePath: ImageResources.noAdoption,
                              title: AppText.nolistingsyet,
                              subTitle: AppText.helppetfindahome,
                              onPressed: () {
                                BottomModels.addListingBottomSheet(context);
                              },
                              buttonName: AppText.addPetAdoption,
                            )
                            : CustomCard(
                              borderColor: AppColors.transparent,
                              backgroundColor: AppColors.background,
                              child: AppCustomListViewBuilder(
                                onRefresh: () async {
                                  context.read<NgoHomeBloc>().add(
                                    NgoHomeEvent.init(),
                                  );
                                },
                                itemCount: state.listing.length,
                                isExpand: false,
                                shrinkWrap: true,
                                separatorBuilder: (context, i) => Styles.gap10,
                                itemBuilder: (BuildContext context, int i) {
                                  return NgoAdoptionCard(
                                    isAllPet: selectedTab == 'All Pets',
                                    adoption: state.listing[i],
                                  );
                                },
                              ),
                            );
                      },
                    )
                    : BlocBuilder<NgoHomeBloc, NgoHomeState>(
                      builder: (context, state) {
                        return state.allPets.isEmpty
                            ? EmptyListPage(
                              imagePath: ImageResources.noAdoption,
                              title: AppText.nolistingsyet,
                              subTitle: AppText.helppetfindahome,
                              onPressed: () {
                                BottomModels.addListingBottomSheet(context);
                              },
                              buttonName: AppText.addPetAdoption,
                            )
                            : CustomCard(
                              borderColor: AppColors.transparent,
                              backgroundColor: AppColors.background,
                              child: AppCustomListViewBuilder(
                                onRefresh: () async {
                                  context.read<NgoHomeBloc>().add(
                                    NgoHomeEvent.init(),
                                  );
                                },
                                itemCount: state.allPets.length,
                                isExpand: false,
                                shrinkWrap: true,
                                separatorBuilder: (context, i) => Styles.gap10,
                                itemBuilder: (BuildContext context, int i) {
                                  return NgoAdoptionCard(
                                    isAllPet: selectedTab == 'All Pets',
                                    adoption: state.allPets[i],
                                  );
                                },
                              ),
                            );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
