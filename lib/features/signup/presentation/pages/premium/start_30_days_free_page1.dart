import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/close_button_widget.dart';
import 'package:dummy/features/signup/presentation/pages/premium/dummy_timer_page.dart';
import 'package:dummy/features/signup/presentation/widgets/monthly_yearly_selection_card.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/premium_info_card.dart';
import 'package:dummy/features/signup/presentation/widgets/start_30_days_free_view.dart';
import 'package:dummy/features/signup/presentation/widgets/tracking_widget.dart';
import 'package:flutter/material.dart';

// import 'start_30_days_free_page2.dart';

class Start30DaysFreePage1 extends StatefulWidget {
  const Start30DaysFreePage1({super.key});
  static const routeName = '/Start30DaysFreePage1';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const Start30DaysFreePage1(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<Start30DaysFreePage1> createState() => _Start30DaysFreePage1State();
}

class _Start30DaysFreePage1State extends State<Start30DaysFreePage1> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CloseButtonWidget(
                onTap: () {
                  context.pushNamed(DummyTimerPage.routeName);
                },
              ),
            ],
          ),
          Styles.gap15,
          Start30DaysFreeView()
        ],
      ),
    );
  }
}
