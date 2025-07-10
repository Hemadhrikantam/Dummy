import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/models/drop_item.dart';
import 'package:dummy/core/models/formz/dropdown_model.dart';
import 'package:dummy/core/models/formz/email.dart';
import 'package:dummy/core/models/formz/mobile.dart';
import 'package:dummy/core/models/formz/not_empty.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:dummy/features/addoption/presentation/bloc/add_adoption/add_adoption_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text.dart';
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
  void initState() {
    Future.delayed(Duration(seconds: 0), () {
      context.read<AddAdoptionBloc>().add(AddAdoptionEvent.initialization());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
      builder: (context, state) {
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(child: __Years()),
                                  Styles.gap10,
                                  Expanded(child: __Months()),
                                ],
                              ),

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
                      BlocBuilder<AddAdoptionBloc, AddAdoptionState>(
                        builder: (context, state) {
                          return SaveCancelWidget(
                            onPressed:state.adoptionValidation? () {
                              context.read<AddAdoptionBloc>().add(
                                AddAdoptionEvent.submit(),
                              );
                            } : (){
                              LogUtility.info('state :${state}');
                              AppAlert.showToast(message: 'Enter the Required Fields');
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
