import 'package:flutter/material.dart';

import '../../../../core/widgets/base_screen.dart';
import '../widgets/vaccines/vaccination_success.dart';

class VaccinationSuccessPage extends StatelessWidget {
  const VaccinationSuccessPage({super.key});
  static const routeName = '/VaccinationSuccessPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const VaccinationSuccessPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: '',
      subTitle: '',
      showBackIcon: false,
      onlyTitle: true,
      child: const VaccinationSuccessContent(),
    );
  }
}
