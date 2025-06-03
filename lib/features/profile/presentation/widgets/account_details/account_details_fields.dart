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
      readOnly: true,
      hintText: AppText.enter,
      onChanged: (value) {},
      headerText: AppText.phoneNumber,
    );
  }
}

class __ForgotPassword extends StatelessWidget {
  const __ForgotPassword();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.grey500,
      borderRadius: Styles.borderRadiusCircular40,
      child: Center(
        child: Text(
          AppText.forgetPassword,
          style: context.textTheme.titleMedium?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.stepperColor,
          ),
        ),
      ),
    );
  }
}
