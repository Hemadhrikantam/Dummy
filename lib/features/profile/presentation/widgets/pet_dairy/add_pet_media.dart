import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/media_form/media_form_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_dropdown.dart';

class AddPetMedia extends StatefulWidget {
  const AddPetMedia({super.key, this.id});
  final String? id;
  @override
  State<StatefulWidget> createState() => _AddPetMedia();
}

class _AddPetMedia extends State<AddPetMedia> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 0), () {
      final petId = context.read<DashboardBloc>().state.selectedPet?.id;
      context.read<MediaFormBloc>().add(
        MediaFormEvent.init(petId ?? '', widget.id),
      );
    });
    super.initState();
  }

  final notesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW15,
      child: BlocBuilder<MediaFormBloc, MediaFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Styles.gap4,
              AppGraber(),
              Styles.gap10,
              Text(
                widget.id == null ? AppText.addMedia : AppText.editMedia,
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
                    // initialValue: state.value,
                    controller: notesController..text = state.value,
                    hintText: AppText.tellUsLuna(
                      context.read<DashboardBloc>().state.selectedPet?.name ??
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
              _Events(),
              Styles.gap20,

              Text(
                AppText.media,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Styles.gap10,
              _Media(),
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
                  return state.submitStatus.loading
                      ? LoadingWidget.circularProgressIndicatorWithRow
                      : SaveCancelWidget(
                        onPressed:
                            state.validation
                                ? () {
                                  if (state.submitStatus.loading) {
                                    return;
                                  }
                                  context.read<MediaFormBloc>().add(
                                    MediaFormEvent.submit(widget.id),
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
          );
        },
      ),
    );
  }
}

class _Events extends StatefulWidget {
  const _Events();

  @override
  State<_Events> createState() => __EventsState();
}

class __EventsState extends State<_Events> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaFormBloc, MediaFormState>(
      builder: (context, state) {
        return CustomStringDropdownSearch(
          items: state.events,
          selectedItem: state.event.value,
          title: AppText.events,
          onChanged: (item) {
            if (item != null) {
              context.read<MediaFormBloc>().add(MediaFormEvent.event(item));
            }
          },
        );
      },
    );
  }
}

class _Media extends StatefulWidget {
  const _Media();

  @override
  State<_Media> createState() => __MediaState();
}

class __MediaState extends State<_Media> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaFormBloc, MediaFormState>(
      builder: (context, state) {
        return DottedBorderWidget(
          paths: state.url.value.isEmpty ? [] : [state.url.value],
          onAdd: (v) {
            context.read<MediaFormBloc>().add(MediaFormEvent.url(v));
          },
        );
      },
    );
  }
}
