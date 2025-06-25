import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_dropdown.dart';

class AddPetMedia extends StatelessWidget {
  const AddPetMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Styles.gap4,
          AppGraber(),
          Styles.gap10,
          Text(
            AppText.addMedia,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap20,
          AppTextFormField(
            hintText: AppText.tellUsLuna,
            borderRadius: Styles.borderRadiusCircular25,
            onChanged: (value) {},
            maxLines: 6,
            heigth: 140,
            headerText: AppText.notes,
          ),

          Styles.gap10,
          BlocBuilder<PetDairyBloc, PetDairyState>(
            builder: (context, state) {
              return CustomDropdownSearch(
                items: state.eventFields,
                title: AppText.events,
                onChanged: (item) {
                  context.read<PetDairyBloc>().add(
                    PetDairyEvent.eventId(
                      DropItemModel(id: item?.id ?? 0, value: ''),
                    ),
                  );
                },
              );
            },
          ),
          Styles.gap20,

          Text(
            AppText.media,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap10,
          DottedBorderWidget(),
          Styles.gap30,
          BlocBuilder<PetDairyBloc, PetDairyState>(
            builder: (context, state) {
              return SaveCancelWidget(
                onPressed: () {
                },
              );
            },
          ),
          Styles.gap10,
        ],
      ),
    );
  }
}
