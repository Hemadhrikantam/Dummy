import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/addoption/presentation/bloc/adoption/adoption_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'adoption_card.dart';

class AdoptiontabbarView extends StatelessWidget {
  const AdoptiontabbarView({super.key, required this.tab});
  final String tab;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdoptionBloc, AdoptionState>(
      builder: (context, state) {
        final item = state.adoptions;
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
            :  CustomCard(
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
                  return AdoptionCard(
                    isAllPet: tab == 'All Pets',
                    adoption: item[i],
                  );
                },
              ),
            );
      },
    );
  }
}
