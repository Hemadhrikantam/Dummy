import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/media_form/media_form_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_dropdown.dart';

class AddPetMedia extends StatefulWidget {
  const AddPetMedia({super.key});

  @override
  State<StatefulWidget> createState() => _AddPetMedia();
}

class _AddPetMedia extends State<AddPetMedia> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<MediaFormBloc>().add(MediaFormEvent.init(petId ?? 0, null));
    super.initState();
  }

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
          BlocSelector<MediaFormBloc, MediaFormState, NotEmpty>(
            selector: (state) {
              return state.notes;
            },
            builder: (context, state) {
              return AppTextFormField(
                initialValue: state.value,
                hintText: AppText.tellUsLuna(
                  context.read<DashboardBloc>().state.selectedPet?.petName ??
                      "",
                ),
                borderRadius: Styles.borderRadiusCircular25,
                onChanged: (value) {
                  context.read<MediaFormBloc>().add(
                    MediaFormEvent.notes(value),
                  );
                },
                maxLines: 6,
                heigth: 140,
                headerText: AppText.notes,
              );
            },
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
                  if (item != null) {
                    context.read<MediaFormBloc>().add(
                      MediaFormEvent.event(item),
                    );
                  }
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
          BlocSelector<MediaFormBloc, MediaFormState, NotEmpty>(
            selector: (state) {
              return state.url;
            },
            builder: (context, state) {
              return DottedBorderWidget(
                paths: state.value.isEmpty ? [] : [state.value],
                onAdd: (v) {
                  context.read<MediaFormBloc>().add(MediaFormEvent.url(v));
                },
              );
            },
          ),
          Styles.gap30,
          BlocConsumer<MediaFormBloc, MediaFormState>(
            listener: (context, state) {
              if (state.submitStatus.success) {
                context.read<PetDairyBloc>().add(
                  PetDairyEvent.initialization(),
                );
                context.pop();
              }
            },
            builder: (context, state) {
              return SaveCancelWidget(
                onPressed:
                    state.validation
                        ? () {
                          context.read<MediaFormBloc>().add(
                            const MediaFormEvent.submit(null),
                          );
                        }
                        : () => AppAlert.showToast(
                          message: 'Provide Required Fields',
                        ),
              );
            },
          ),
          Styles.gap10,
        ],
      ),
    );
  }
}
