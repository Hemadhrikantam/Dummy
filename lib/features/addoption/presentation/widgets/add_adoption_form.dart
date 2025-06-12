import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/app_text.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_dropdown.dart';
import '../../../../../core/widgets/dotted_border_widget.dart';
import '../../../../core/widgets/app_graber.dart';
import '../../../dailycare/presentation/widgets/save_cancel_widget.dart';

part 'add_adoption_fields.dart';

class AddAdoptionForm extends StatefulWidget {
  const AddAdoptionForm({super.key});

  @override
  State<AddAdoptionForm> createState() => _AddAdoptionFormState();
}

class _AddAdoptionFormState extends State<AddAdoptionForm> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.80,
      minChildSize: 0.80,
      maxChildSize: 0.80,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.79,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.gap6,
                  AppGraber(),
                  Styles.gap15,
                  Text(
                    AppText.addAdoptionQuery,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Styles.gap15,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          __Name(),
                          __Age(),
                          __PetType(),
                          __Breed(),
                          Styles.gap10,
                          __Address(),
                          Styles.gap10,
                          __Phone(),
                          Styles.gap10,
                          __Email(),
                          Styles.gap10,
                          __Description(),
                          Styles.gap10,
                          __Media(),
                          Styles.gap30,
                        ],
                      ),
                    ),
                  ),
                  Styles.gap10,
                  SaveCancelWidget(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
