part of 'account_details_form.dart';

class __UserName extends StatelessWidget {
  const __UserName();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.username,
          hintText: AppText.enter,
          onChanged: (value) {
            context.read<AccountBloc>().add(AccountEvent.username(value));
          },
          headerText: AppText.username,
        );
      },
    );
  }
}

class __EmailAddress extends StatelessWidget {
  const __EmailAddress();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.email,
          hintText: AppText.enter,
          onChanged: (value) {
            context.read<AccountBloc>().add(AccountEvent.email(value));
          },
          headerText: AppText.emailAddress,
        );
      },
    );
  }
}

class __PhoneNumber extends StatelessWidget {
  const __PhoneNumber();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return AppTextFormField(
          initialValue: state.phone,
          enable: false,
          readOnly: true,
          hintText: AppText.enter,
          onChanged: (value) {
            context.read<AccountBloc>().add(AccountEvent.phone(value));
          },
          headerText: AppText.phoneNumber,
        );
      },
    );
  }
}
