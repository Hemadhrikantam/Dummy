import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../ngo/presentation/bloc/ngo_home/ngo_home_bloc.dart';
import '../bloc/adoption/adoption_bloc.dart';

class AdoptionDeleteBottomSheetContent extends StatelessWidget {
  const AdoptionDeleteBottomSheetContent({
    super.key,
    this.onTap,
    required this.petName,
    required this.id,
    required this.isNgo,
  });
  final VoidCallback? onTap;
  final String petName;
  final String id;
  final bool isNgo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppText.delete,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Styles.gap10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppText.areYouSureToDelete,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' $petName ?',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Styles.gap20,
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      borderColor: AppColors.grey500,
                      backgroundColor: AppColors.white,
                      textColor: AppColors.buttonTextColor,
                      radius: 50,
                      name: AppText.cancel,
                    ),
                  ),
                  Styles.gap15,
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        if (isNgo) {
                          context.read<NgoHomeBloc>().add(
                            NgoHomeEvent.deletePet(id: id),
                          );
                        } else {
                          context.read<AdoptionBloc>().add(
                            AdoptionEvent.deletePet(id: id),
                          );
                        }
                      },
                      radius: 50,
                      borderColor: AppColors.transparent,
                      backgroundColor: AppColors.red,
                      name: AppText.delete,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
