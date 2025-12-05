import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';

class PetImageWidget extends StatelessWidget {
  const PetImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        if (state.selectedPet != null) {
          return ClipRRect(
            borderRadius: Styles.borderRadiusCircular200,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: AppColors.buttonBackground,
              child: AppNetworkImage(
                url: state.selectedPet!.imageUrl ?? '',
                width: 140,
                height: 140,
              ),
            ),
          );
        }
        return CircleAvatar(
          radius: 70,
          backgroundColor: AppColors.buttonBackground,
          child: AppAssestsImage(path: ImageResources.dog),
        );
      },
    );
  }
}
