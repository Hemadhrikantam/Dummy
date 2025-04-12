import 'package:dummy/core/constent/styles.dart';
//import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/lenear_progress_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/custom_back_button_widget.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({super.key, required this.currentScreenIndex});
  final int currentScreenIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(),
        Styles.gap10,
        LenearProgressWidget(currentScreenIndex: currentScreenIndex),
      ],
    );
  }
}
