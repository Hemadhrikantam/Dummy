import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/base_screen.dart';
import '../widgets/adoption_details_card.dart';

class AllAdoptionDetailsPage extends StatelessWidget {
  const AllAdoptionDetailsPage({super.key});
  static const routeName = '/AllAllAdoptionDetailsPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AllAdoptionDetailsPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.details,
      subTitle: '',
      onlyTitle: true,
      child: ListView(
        padding: Styles.edgeInsetsOnlyH00,
        children: [AdoptionDetailsCard(isAllPet: true), Styles.gap80],
      ),
    );
  }
}
