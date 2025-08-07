import 'dart:io';

import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/enum/breed.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_multi_dropdown.dart';
import 'package:dummy/core/widgets/file_picker.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_form/pet_form_bloc.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/constant/app_text.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_dropdown.dart';

part 'add_pet_fields.dart';

class AddPetForm extends StatefulWidget {
  const AddPetForm({super.key, this.petId});
  final int? petId;
  @override
  State<AddPetForm> createState() => _AddPetForm();
}

class _AddPetForm extends State<AddPetForm> {
  @override
  void initState() {
    context.read<PetFormBloc>().add(PetFormEvent.init(widget.petId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.edgeInsetsOnlyH00,
      children: [
        __UploadImage(),
        Styles.gap30,
        Padding(
          padding: Styles.edgeInsetsAll04,
          child: CustomCard(
            borderColor: AppColors.transparent,
            child: Stack(
              children: [
                Column(
                  children: [
                    Styles.gap10,
                    __PetName(),
                    __PetGender(),
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
        ),
        Styles.gap80,
      ],
    );
  }
}
