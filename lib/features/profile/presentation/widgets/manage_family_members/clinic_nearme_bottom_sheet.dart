import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:dummy/features/profile/presentation/bloc/vet_near_me/vet_near_me_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../addoption/presentation/widgets/adoption_card.dart';

class ClinicNearMeBottomSheet extends StatelessWidget {
  const ClinicNearMeBottomSheet({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return BlocBuilder<VetNearMeBloc, VetNearMeState>(
          builder: (context, state) {
            return state.initStatus.loading
                ? LoadingWidget.circularProgressIndicatorCenter
                : ListView(
                  controller: scrollController,
                  padding: Styles.edgeInsetsOnlyW20,
                  children: [
                    Styles.gap6,
                    AppGraber(),
                    Styles.gap16,
                    Text(
                      AppText.clinicsNearMe,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Styles.gap10,
                    AppCustomListViewBuilder(
                      itemCount: state.clinics.length,
                      isExpand: false,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = state.clinics[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomCard(
                              child: Row(
                                children: [
                                  TextValueWidget(
                                    text: 'Clinic Name   0km',
                                    value: item.name,
                                  ),
                                  Styles.spacer,
                                  AppAssestsImage(
                                    path: ImageResources.map,
                                    width: 30,
                                    height: 30,
                                    boxFit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Styles.gap10,
                          ],
                        );
                      },
                    ),
                  ],
                );
          },
        );
      },
    );
  }
}
