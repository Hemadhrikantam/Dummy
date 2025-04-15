import 'package:dummy/core/widgets/buttons/overview_button.dart';
import 'package:dummy/core/widgets/overview_card_widget.dart';
import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewAddButton(onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath: 'assets/icons/meals.png',
            title: 'Meals',
            subtitle: '5 logged today', // Update as needed
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath: 'assets/icons/walks.png',
            title: 'Walks',
            subtitle: '0 logged today', // Update as needed
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath: 'assets/icons/grooming.png',
            title: 'Grooming',
            subtitle: 'Next on 04/20/2025', // Update as needed
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath: 'assets/icons/deworming.png',
            title: 'Deworming',
            subtitle: 'Due on 05/01/2025', // Update as needed
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath: 'assets/icons/expenses.png',
            title: 'Expenses',
            subtitle: '\$25 spent this week',
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath:
                'assets/icons/expenses.png', // Replace with a relevant icon
            title: 'Expenses',
            subtitle: '\$25 spent this week',
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: OverviewCard(
            iconPath:
                'assets/icons/deworming.png', // Replace with a relevant icon
            title: 'Deworming',
            subtitle: 'Due on 05/01/2025',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
