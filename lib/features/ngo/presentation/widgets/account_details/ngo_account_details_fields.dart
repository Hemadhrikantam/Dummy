part of 'ngo_account_details_form.dart';

class __NgoName extends StatelessWidget {
  const __NgoName();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.ngoName.value,
          headerText: AppText.ngoName,
          errorText: state.ngoName.error,
          onChanged:
              (value) => context.read<NgoProfileBloc>().add(
                NgoProfileEvent.ngoName(value),
              ),
        );
      },
    );
  }
}

class __ContactPersonName extends StatelessWidget {
  const __ContactPersonName();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      buildWhen: (p, c) => p.contactPersonName != c.contactPersonName,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.contactPersonName.value,
          headerText: AppText.contactPersonName,
          errorText: state.contactPersonName.error,
          onChanged:
              (value) => context.read<NgoProfileBloc>().add(
                NgoProfileEvent.contactPersonName(value),
              ),
        );
      },
    );
  }
}

class __EmailAddress extends StatelessWidget {
  const __EmailAddress();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      buildWhen: (p, c) => p.email != c.email,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.email.value,
          headerText: AppText.emailAddress,
          errorText: state.email.error,
          onChanged:
              (value) => context.read<NgoProfileBloc>().add(
                NgoProfileEvent.email(value),
              ),
        );
      },
    );
  }
}

class __PhoneNumber extends StatelessWidget {
  const __PhoneNumber();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      buildWhen: (p, c) => p.phone != c.phone,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.phone.value,
          headerText: AppText.phoneNumber,
          errorText: state.phone.error,
          onChanged:
              (value) => context.read<NgoProfileBloc>().add(
                NgoProfileEvent.phone(value),
              ),
        );
      },
    );
  }
}

class __Pincode extends StatelessWidget {
  const __Pincode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      buildWhen: (p, c) => p.pincode != c.pincode,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.pincode.value,
          headerText: AppText.pincode,
          errorText: state.pincode.error,
          onChanged:
              (value) => context.read<NgoProfileBloc>().add(
                NgoProfileEvent.pincode(value),
              ),
        );
      },
    );
  }
}

class __Address extends StatelessWidget {
  const __Address();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      buildWhen: (p, c) => p.address != c.address,
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.address.value,
          headerText: AppText.address,
          errorText: state.address.error,
          onChanged:
              (value) => context.read<NgoProfileBloc>().add(
                NgoProfileEvent.address(value),
              ),
        );
      },
    );
  }
}

class __LogoFilePicker extends StatefulWidget {
  const __LogoFilePicker();

  @override
  State<StatefulWidget> createState() => _LogoFilePickerState();
}

class _LogoFilePickerState extends State<__LogoFilePicker> {
  XFile? _image;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
      builder: (context, state) {
        LogUtility.warning(state.logoFile.value);
        return GestureDetector(
          onTap: () async {
            final images = await customFilePicker(context);
            if (images.isNotEmpty) {
              context.read<NgoProfileBloc>().add(
                NgoProfileEvent.logoFile(images.first),
              );
              setState(() {
                _image = XFile(images.first);
              });
            }
          },
          child: CircleAvatar(
            radius: 100,
            backgroundColor: AppColors.buttonBackground,
            backgroundImage:
                _image != null
                    ? FileImage(File(_image!.path))
                    : state.logoUrl.contains('http')
                    ? NetworkImage(state.logoUrl)
                    : state.logoFile.value.isNotEmpty
                    ? FileImage(File(state.logoFile.value))
                    : null,
            child:
                _image == null && state.logoUrl.isEmpty
                    ? Text(
                      AppText.upload,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.buttonTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    )
                    : null,
          ),
        );
      },
    );
  }
}

class __RegistrationProofPicker extends StatelessWidget {
  const __RegistrationProofPicker();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NgoProfileBloc, NgoProfileState>(
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
                context.read<NgoProfileBloc>().add(
                  NgoProfileEvent.registrationProofFile(value),
                );
              },
              paths:
                  state.registrationProofUrl.isNotEmpty
                      ? [state.registrationProofUrl]
                      : state.registrationProofFile.value.isNotEmpty
                      ? [state.registrationProofFile.value]
                      : [],
            ),
            if (state.registrationProofFile.error != null &&
                state.registrationProofUrl.isEmpty) ...[
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
