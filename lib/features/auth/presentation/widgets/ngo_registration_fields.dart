part of '../pages/ngo_registration_page.dart';

class __NgoName extends StatelessWidget {
  const __NgoName();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(headerText: AppText.ngoName, onChanged: (value) {});
  }
}

class __Address extends StatelessWidget {
  const __Address();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: AppText.enter,
      borderRadius: Styles.borderRadiusCircular25,
      onChanged: (value) {},
      maxLines: 7,
      heigth: 140,
      headerText: AppText.address,
    );
  }
}

class __ContactName extends StatelessWidget {
  const __ContactName();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      headerText: AppText.contactPersonName,
      onChanged: (value) {},
    );
  }
}

class __EmailAddress extends StatelessWidget {
  const __EmailAddress();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      headerText: AppText.emailAddress,
      onChanged: (value) {},
    );
  }
}

class __PinCode extends StatelessWidget {
  const __PinCode();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      keyboardType: TextInputType.number,
      headerText: AppText.pincode,
      onChanged: (value) {},
    );
  }
}

class __Phone extends StatelessWidget {
  const __Phone();

  @override
  Widget build(BuildContext context) {
    return PhoneTextField(
      headerText: AppText.phoneNumber,
      placeHolder: AppText.enterPhoneNumber,
    );
  }
}

class __File extends StatelessWidget {
  const __File();

  @override
  Widget build(BuildContext context) {
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
        DottedBorderWidget(),
      ],
    );
  }
}
