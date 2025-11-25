import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_details_card.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/base_screen.dart';

class AllAdoptionDetailsPage extends StatelessWidget {
  const AllAdoptionDetailsPage({super.key, this.adoption});
  final Listing? adoption;
  static const routeName = '/AllAllAdoptionDetailsPage';

  static Route<T> route<T>(Listing? adoption) {
    return MaterialPageRoute<T>(
      builder: (context) => AllAdoptionDetailsPage(adoption: adoption),
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
        children: [
          NgoAdoptionDetailsCard(isAllPet: true, adoption: adoption),
          Styles.gap80,
        ],
      ),
    );
  }
}
