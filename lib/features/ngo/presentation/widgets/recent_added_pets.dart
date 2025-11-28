import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/ngo/presentation/bloc/ngo_home/ngo_home_bloc.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: BlocBuilder<NgoHomeBloc, NgoHomeState>(
            builder: (context, state) {
              return AppCustomListViewBuilder(
                itemCount: state.listing.length,
                isExpand: false,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, i) => Styles.gap10,
                itemBuilder: (BuildContext context, int i) {
                  return NgoAdoptionCard(
                    isAllPet: false,
                    adoption: state.listing[i],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
