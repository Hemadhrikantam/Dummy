import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/models/formz/not_empty.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../bloc/auth/auth_bloc.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthBloc, AuthState, NotEmpty>(
      selector: (state) {
        return state.name;
      },
      builder: (context, state) {
        return AppTextFormField(
          hintText: AppText.enter,
          isMandatory: true,
          headerText: AppText.yourName,
          onChanged: (value) {
            context.read<AuthBloc>().add(AuthEvent.name(value));
          },
        );
      },
    );
  }
}
