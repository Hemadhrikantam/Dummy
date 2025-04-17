import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

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
          child: AppButton(
            name: Text(AppText.save, style: Styles.buttonStyle),
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
