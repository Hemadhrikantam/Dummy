import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/addoption/presentation/widgets/adoption_card.dart';
import 'package:flutter/material.dart';

class RecentAddedPets extends StatelessWidget {
  const RecentAddedPets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Added Pets',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Styles.gap10,
        CustomCard(
          borderColor: AppColors.transparent,
          backgroundColor: AppColors.background,
          child: AppCustomListViewBuilder(
            itemCount: 10,
            isExpand: false,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (BuildContext context, int i) {
              return AdoptionCard(isAllPet: false,);
            },
          ),
        ),
      ],
    );
  }
}
