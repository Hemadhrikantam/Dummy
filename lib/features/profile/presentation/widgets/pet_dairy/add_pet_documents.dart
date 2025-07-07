import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/dotted_border_widget.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/document_form/document_form_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPetDocuments extends StatefulWidget {
  const AddPetDocuments({super.key});

  @override
  State<StatefulWidget> createState() => _AddPetDocuments();
}

class _AddPetDocuments extends State<AddPetDocuments> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<DocumentFormBloc>().add(
      DocumentFormEvent.init(petId ?? 0, null),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Styles.gap6,
          AppGraber(),
          Styles.gap16,
          Text(
            AppText.addDoc,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap20,
          Text(
            AppText.document,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Styles.gap6,
          BlocSelector<DocumentFormBloc, DocumentFormState, NotEmpty>(
            selector: (state) {
              return state.url;
            },
            builder: (context, state) {
              return DottedBorderWidget(
                paths: state.value.isEmpty ? [] : [state.value],
                onAdd: (v) {
                  context.read<DocumentFormBloc>().add(
                    DocumentFormEvent.url(v),
                  );
                },
              );
            },
          ),
          Styles.gap30,
          BlocConsumer<DocumentFormBloc, DocumentFormState>(
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
                          context.read<DocumentFormBloc>().add(
                            const DocumentFormEvent.submit(null),
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
