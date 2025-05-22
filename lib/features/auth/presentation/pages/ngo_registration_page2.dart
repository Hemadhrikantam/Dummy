part of 'ngo_registration_page.dart';

class NgoRegistrationPage2 extends StatefulWidget {
  const NgoRegistrationPage2({super.key});
  static const routeName = '/NgoRegistrationPage2';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const NgoRegistrationPage2(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _NgoRegistrationPage2();
}

class _NgoRegistrationPage2 extends State<NgoRegistrationPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.joinDummyToday,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.letsCreateYourNgoAccount,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap20,
          __File(),
          Styles.gap15,
          __Address(),
          Styles.gap15,
          __PinCode(),

          Styles.gap50,
          AppButton(
            name: Text(
              AppText.startYourNGOJourney,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(NgoWelcomePage.routeName);
            },
          ),
          Styles.gap50,
        ],
      ),
    );
  }
}
