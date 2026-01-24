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
import '../../../dailycare/presentation/widgets/overview_header_widget.dart';

class NgoPetsView extends StatefulWidget {
  const NgoPetsView({super.key});

  @override
  createState() => _NgoPetsView();
}

class _NgoPetsView extends State<NgoPetsView> {
  String selectedTab = 'My Listing';
  final tabs = ['My Listing', 'All Pets'];
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
              Expanded(
                child: SearchButton(
                  hintText: AppText.search,
                  controller: _searchController,
                  onChanged: (v) => setState(() => _query = v.trim()),
                  suffix:
                      (_query.isNotEmpty)
                          ? GestureDetector(
                            onTap: () {
                              _searchController.clear();
                              setState(() => _query = '');
                            },
                            child: const Icon(
                              Icons.close,
                              color: AppColors.grey600,
                            ),
                          )
                          : null,
                ),
              ),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // FilterButton(),
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
            onTabSelected: (tab) {
              setState(() {
                selectedTab = tab;
                _searchController.clear();
                _query = '';
              });
            },
          ),
          Styles.gap20,
          Expanded(
            child:
                selectedTab != 'All Pets'
                    ? BlocBuilder<NgoHomeBloc, NgoHomeState>(
                      builder: (context, state) {
                        final source = state.listing;
                        final filtered =
                            (_query.isEmpty)
                                ? source
                                : source.where((l) {
                                  final q = _query.toLowerCase();
                                  return (l.petName.toLowerCase().contains(q) ||
                                      l.breedName.toLowerCase().contains(q) ||
                                      l.petType.toLowerCase().contains(q) ||
                                      l.listedByName.toLowerCase().contains(q));
                                }).toList();
                        return filtered.isEmpty
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
                                itemCount: filtered.length,
                                isExpand: false,
                                shrinkWrap: true,
                                separatorBuilder: (context, i) => Styles.gap10,
                                itemBuilder: (BuildContext context, int i) {
                                  return NgoAdoptionCard(
                                    isAllPet: selectedTab == 'All Pets',
                                    adoption: filtered[i],
                                  );
                                },
                              ),
                            );
                      },
                    )
                    : BlocBuilder<NgoHomeBloc, NgoHomeState>(
                      builder: (context, state) {
                        final source = state.allPets;
                        final filtered =
                            (_query.isEmpty)
                                ? source
                                : source.where((l) {
                                  final q = _query.toLowerCase();
                                  return (l.petName.toLowerCase().contains(q) ||
                                      l.breedName.toLowerCase().contains(q) ||
                                      l.petType.toLowerCase().contains(q) ||
                                      l.listedByName.toLowerCase().contains(q));
                                }).toList();
                        return filtered.isEmpty
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
                                itemCount: filtered.length,
                                isExpand: false,
                                shrinkWrap: true,
                                separatorBuilder: (context, i) => Styles.gap10,
                                itemBuilder: (BuildContext context, int i) {
                                  return NgoAdoptionCard(
                                    isAllPet: selectedTab == 'All Pets',
                                    adoption: filtered[i],
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
