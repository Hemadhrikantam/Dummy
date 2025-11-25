import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/addoption/presentation/bloc/adoption/adoption_bloc.dart';
import 'package:dummy/features/addoption/presentation/pages/adoption_details_page.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdoptiontabbarView extends StatefulWidget {
  const AdoptiontabbarView({super.key, required this.tab});
  final String tab;

  @override
  State<AdoptiontabbarView> createState() => _AdoptiontabbarViewState();
}

class _AdoptiontabbarViewState extends State<AdoptiontabbarView> {
  bool _hasLoaded = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasLoaded && widget.tab == 'All Pets') {
      context.read<AdoptionBloc>().add(AdoptionEvent.adoptions());
      _hasLoaded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdoptionBloc, AdoptionState>(
      builder: (context, state) {
        final item = widget.tab == 'All Pets' ? state.allPets : state.adoptions;
        return item.isEmpty
            ? EmptyListPage(
              imagePath: ImageResources.noAdoption,
              title: AppText.nolistingsyet,
              subTitle: AppText.helppetfindahome,
              onPressed: () {
                BottomModels.addAdoptionBottomSheet(context);
              },
              buttonName: AppText.addPetAdoption,
            )
            : CustomCard(
              borderColor: AppColors.transparent,
              backgroundColor: AppColors.background,
              child: AppCustomListViewBuilder(
                onRefresh: () async {
                  context.read<AdoptionBloc>().add(AdoptionEvent.adoptions());
                },
                itemCount: item.length,
                isExpand: false,
                shrinkWrap: true,
                separatorBuilder: (context, i) => Styles.gap10,
                itemBuilder: (BuildContext context, int i) {
                  return NgoAdoptionCard(
                    onTap: () {
                      context.push(
                        AdoptionDetailsPage.route(
                          item[i],
                          widget.tab == 'All Pets',
                        ),
                      );
                    },
                    isAllPet: widget.tab == 'All Pets',
                    adoption: item[i],
                  );
                },
              ),
            );
      },
    );
  }
}
