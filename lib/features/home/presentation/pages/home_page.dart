import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:dummy/features/home/presentation/widgets/near_you_card.dart' show NearYouCard;
import 'package:flutter/material.dart';

import '../widgets/pet_information_widget.dart';
import '../widgets/pet_list_home_widget.dart';
import '../widgets/quick_actions_widget.dart';
import '../widgets/tip_of_the_day_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          CustomHeaderWidget(),
          Styles.gap15,
          PetListHomeWidget(),
          Styles.gap15,
          PetInformationWidget(),
          Styles.gap15,
          QuickActionsWidget(),
          Styles.gap15,
          TipOfTheDayCard(),
          Styles.gap15,
          NearYouCard()
        ],
      ),
    );
  }
}
