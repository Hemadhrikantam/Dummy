import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';

class AddPetDocuments extends StatelessWidget {
  const AddPetDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.40,
      child: ListView(
        padding: Styles.edgeInsetsAll15,
        children: [
          Styles.gap4,
          AppGraber(),
          Styles.gap10,
          Text(
            AppText.addDoc,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap20,
          Text(
            AppText.media,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap6,
          DottedBorderWidget(),
          Styles.gap30,
          SaveCancelWidget(),
        ],
      ),
    );
  }
}
