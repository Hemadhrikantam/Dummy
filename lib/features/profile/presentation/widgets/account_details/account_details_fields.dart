part of 'account_details_form.dart';

class __UserName extends StatelessWidget {
  const __UserName();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.username,
    );
  }
}

class __EmailAddress extends StatelessWidget {
  const __EmailAddress();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.emailAddress,
    );
  }
}

class __PhoneNumber extends StatelessWidget {
  const __PhoneNumber();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      enable: false,
      readOnly: true,
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.phoneNumber,
    );
  }
}

