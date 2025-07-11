import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/base_screen.dart';
import '../widgets/adoption_details_card.dart';

class AllAdoptionDetailsPage extends StatelessWidget {
  const AllAdoptionDetailsPage({super.key,  this.adoption});
  final Adoption? adoption;
  static const routeName = '/AllAllAdoptionDetailsPage';

  static Route<T> route<T>(Adoption? adoption) {
    return MaterialPageRoute<T>(
      builder: (context) =>  AllAdoptionDetailsPage(adoption: adoption,),
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
        children: [AdoptionDetailsCard(isAllPet: true,adoption: adoption, ), Styles.gap80],
      ),
    );
  }
}
