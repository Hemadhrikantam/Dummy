part of '../pages/ngo_registration_page.dart';

class __NgoName extends StatelessWidget {
  const __NgoName();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.ngoName != c.ngoName,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.ngoName.value,
          headerText: AppText.ngoName,
          errorText: state.ngoName.error,
          onChanged: (value) {
            context
                .read<NgoRegistrationBloc>()
                .add(NgoRegistrationEvent.ngoName(value));
          },
        );
      },
    );
  }
}

class __Address extends StatelessWidget {
  const __Address();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.address != c.address,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.address.value,
          hintText: AppText.enter,
          borderRadius: Styles.borderRadiusCircular25,
          errorText: state.address.error,
          onChanged: (value) {
            context
                .read<NgoRegistrationBloc>()
                .add(NgoRegistrationEvent.address(value));
          },
          maxLines: 7,
          heigth: 140,
          headerText: AppText.address,
        );
      },
    );
  }
}

class __ContactName extends StatelessWidget {
  const __ContactName();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.contactPersonName != c.contactPersonName,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.contactPersonName.value,
          headerText: AppText.contactPersonName,
          errorText: state.contactPersonName.error,
          onChanged: (value) {
            context
                .read<NgoRegistrationBloc>()
                .add(NgoRegistrationEvent.contactPersonName(value));
          },
        );
      },
    );
  }
}

class __EmailAddress extends StatelessWidget {
  const __EmailAddress();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.email != c.email,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.email.value,
          headerText: AppText.emailAddress,
          errorText: state.email.error,
          onChanged: (value) {
            context
                .read<NgoRegistrationBloc>()
                .add(NgoRegistrationEvent.email(value));
          },
        );
      },
    );
  }
}

class __PinCode extends StatelessWidget {
  const __PinCode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.pincode != c.pincode,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.pincode.value,
          keyboardType: TextInputType.number,
          headerText: AppText.pincode,
          errorText: state.pincode.error,
          onChanged: (value) {
            context
                .read<NgoRegistrationBloc>()
                .add(NgoRegistrationEvent.pincode(value));
          },
        );
      },
    );
  }
}

class __Phone extends StatelessWidget {
  const __Phone();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.phone != c.phone,
      builder: (context, state) {
        return PhoneTextField(
          headerText: AppText.phoneNumber,
          placeHolder: AppText.enterPhoneNumber,
          onChange: (value) {
            context
                .read<NgoRegistrationBloc>()
                .add(NgoRegistrationEvent.phone(value.number));
          },
        );
      },
    );
  }
}

class __File extends StatelessWidget {
  const __File();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoRegistrationBloc, NgoRegistrationState>(
      buildWhen: (p, c) => p.registrationProofFile != c.registrationProofFile,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.uploadRegistrationProof,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Styles.gap6,
            DottedBorderWidget(
              onAdd: (value) {
                context
                    .read<NgoRegistrationBloc>()
                    .add(NgoRegistrationEvent.registrationProofFile(value));
              },
            ),
            if (state.registrationProofFile.error != null) ...[
              Styles.gap6,
              Text(
                state.registrationProofFile.error ?? '',
                style: context.textTheme.bodySmall?.copyWith(
                  color: AppColors.textRed,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
