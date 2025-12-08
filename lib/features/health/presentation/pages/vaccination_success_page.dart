import 'package:dummy/core/constant/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/base_screen.dart';
import '../widgets/vaccines/vaccination_success.dart';

class VaccinationSuccessPage extends StatelessWidget {
  const VaccinationSuccessPage({
    super.key,
    required this.vaccinationName,
    required this.companyName,
    this.dueDate,
    required this.dateAdministered,
  });
  static const routeName = '/VaccinationSuccessPage';
  final String vaccinationName;
  final String companyName;
  final DateTime? dueDate;
  final DateTime dateAdministered;
  static Route<T> route<T>({
    required String vaccinationName,
    required String companyName,
    required DateTime? dueDate,
    required DateTime dateAdministered,
  }) {
    return MaterialPageRoute<T>(
      builder:
          (context) => VaccinationSuccessPage(
            vaccinationName: vaccinationName,
            companyName: companyName,
            dueDate: dueDate,
            dateAdministered: dateAdministered,
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
        child: VaccinationSuccessContent(
          vaccinationName: vaccinationName,
          companyName: companyName,
          dueDate: dueDate,
          dateAdministered: dateAdministered,
        ),
      ),
    );
  }
}
