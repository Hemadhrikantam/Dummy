import 'package:dummy/core/constant/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/base_screen.dart';
import '../widgets/medication/medication_success.dart';

class MedicationSuccessPage extends StatelessWidget {
  const MedicationSuccessPage({
    super.key,
    required this.dosage,
    required this.startDate,
    required this.endDate,
  });
  final String dosage;
  final String startDate;
  final String endDate;

  static const routeName = '/MedicationSuccessPage';

  static Route<T> route<T>({
    required String dosage,
    required String startDate,
    required String endDate,
  }) {
    return MaterialPageRoute<T>(
      builder:
          (context) => MedicationSuccessPage(
            dosage: dosage,
            startDate: startDate,
            endDate: endDate,
          ),
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
      child: Padding(
        padding: Styles.edgeInsetsOnlyH15,
        child: MedicationSuccessContent(
          dosage: dosage,
          startDate: startDate,
          endDate: endDate,
        ),
      ),
    );
  }
}
