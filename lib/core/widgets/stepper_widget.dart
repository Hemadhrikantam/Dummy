import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
//import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/lenear_progress_widget.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
    required this.currentScreenIndex,
    this.onTap,
  });
  final int currentScreenIndex;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButtonWidget(onTap: onTap),
        Styles.gap10,
        LenearProgressWidget(currentScreenIndex: currentScreenIndex),
      ],
    );
  }
}
