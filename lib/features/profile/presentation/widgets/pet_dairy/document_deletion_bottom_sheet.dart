import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../../core/widgets/buttons/app_text_button.dart';

class DocumentDeletionBottomSheet extends StatelessWidget {
  const DocumentDeletionBottomSheet({super.key, this.onTap, required this.id});
  final VoidCallback? onTap;
  final String id;

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
                      text: " this ",
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: AppText.document,
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
                        context.read<PetDairyBloc>().add(
                          PetDairyEvent.deleteDocument(id),
                        );
                        context.pop();
                        context.pop();
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
