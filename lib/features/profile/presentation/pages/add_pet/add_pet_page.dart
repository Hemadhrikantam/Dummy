import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_form/pet_form_bloc.dart';
import 'package:dummy/features/profile/presentation/widgets/add_pet/add_pet_form.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_text.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';

class AddPetPage extends StatefulWidget {
  const AddPetPage({super.key, this.id});
  static const routeName = '/AddPetPage';
  final String? id;
  static Route<T> route<T>({String? id}) {
    return MaterialPageRoute<T>(
      builder:
          (context) => BlocProvider(
            create: (context) => InjectionBloc.petFormBloc,
            child: AddPetPage(id: id),
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<StatefulWidget> createState() => _AddPetPage();
}

class _AddPetPage extends State<AddPetPage> {
  @override
  void initState() {
    context.read<PetFormBloc>().add(PetFormEvent.init(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetFormBloc, PetFormState>(
      builder: (context, state) {
        return ScaffoldTitleBaseScreen(
          title: widget.id != null ? AppText.editPet : AppText.addPet,
          subTitle: '',
          onlyTitle: true,
          showImage: false,
          bottom: BlocConsumer<PetFormBloc, PetFormState>(
            listener: (context, state) {
              if (state.submitStatus.success) {
                context.read<DashboardBloc>().add(
                  DashboardEvent.dashboardPets(),
                );
                context.pop();
              }
            },
            builder: (context, state) {
              return BottomActionButton(
                child: AppButton(
                  onPressed:
                      state.validation
                          ? () {
                            context.read<PetFormBloc>().add(
                              PetFormEvent.submit(widget.id),
                            );
                          }
                          : () => AppAlert.showToast(
                            message: 'Provide Required Fields',
                          ),

                  name: Text(
                    AppText.save,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            },
          ),
          child: AddPetForm(petId: widget.id),
        );
      },
    );
  }
}
