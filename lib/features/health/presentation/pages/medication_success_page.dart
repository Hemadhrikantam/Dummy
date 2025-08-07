
import 'package:dummy/core/constant/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/base_screen.dart';
import '../widgets/medication/medication_success.dart';

class MedicationSuccessPage extends StatelessWidget {
  const MedicationSuccessPage({super.key});
  static const routeName = '/MedicationSuccessPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const MedicationSuccessPage(),
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
      child:  Padding(
        padding: Styles.edgeInsetsOnlyH15,
        child: MedicationSuccessContent(),
      ),
    );
  }
}
