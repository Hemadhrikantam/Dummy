import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/addoption/presentation/bloc/add_adoption/add_adoption_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/buttons/app_outlined_button.dart';

class SaveCancelWidget extends StatelessWidget {
  const SaveCancelWidget({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: AppOutlinedButton(
            name: Text(AppText.cancel, style: Styles.buttonStyle),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        Styles.gap10,
        Expanded(
          child: BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
            builder: (context, state) {
              return AppButton(
                name:
                    state.addAdoptionStatus.loading
                        ? LoadingWidget.circularProgressIndicatorCenter
                        : Text(AppText.save, style: Styles.buttonStyle),

                backgroundColor:
                    state.adoptionValidation
                        ? AppColors.buttonBackground
                        : AppColors.grey300,
                onPressed: onPressed,
              );
            },
          ),
        ),
      ],
    );
  }
}
