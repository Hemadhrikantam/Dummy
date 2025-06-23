import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constent/styles.dart';
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
        return ListView(
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
            CustomCard(
             
              child: Row(
                children: [
                  TextValueWidget(text: 'Clinic Name   1.5km', value: 'Jeeva Pet Clinic'),
                  Styles.spacer,
                  AppAssestsImage(path: ImageResources.map,width: 30,height: 30,boxFit: BoxFit.contain,),
                  
                  
                ],
              ),
            ),
            Styles.gap10,
             CustomCard(
             
              child: Row(
                children: [
                  TextValueWidget(text: 'Clinic Name   1.5km', value: 'Jeeva Pet Clinic'),
                  Styles.spacer,
                  AppAssestsImage(path: ImageResources.map,width: 30,height: 30,boxFit: BoxFit.contain,),
                  
                  
                ],
              ),
            ),
            Styles.gap10,
             CustomCard(
             
              child: Row(
                children: [
                  TextValueWidget(text: 'Clinic Name   1.5km', value: 'Jeeva Pet Clinic'),
                  Styles.spacer,
                  AppAssestsImage(path: ImageResources.map,width: 30,height: 30,boxFit: BoxFit.contain,),
                  
                  
                ],
              ),
            ),
            Styles.gap30,
           
          ],
        );
      },
    );
  }
}
