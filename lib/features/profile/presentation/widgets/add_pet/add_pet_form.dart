import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_dropdown.dart';

part 'add_pet_fields.dart';

class AddPetForm extends StatelessWidget {
  const AddPetForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.edgeInsetsOnlyH00,
      children: [
        __UploadImage(),
        Styles.gap30,
        CustomCard(
          borderColor: AppColors.transparent,
          child: Stack(
            children: [
              Column(
                children: [
                  Styles.gap10,
                  __PetName(),
                  __Age(),
                  __PetType(),
                  __Breed(),
                  __Weight(),
                  __PersonalityTags(),
                ],
              ),
            ],
          ),
        ),
        Styles.gap80,
      ],
    );
  }
}
