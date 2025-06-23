import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/adoption_nav_bar.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/addoption/presentation/pages/addoption_page.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

// import '../../../wag/presentation/pages/wag_page.dart';

class AdoptionDashboardPage extends StatefulWidget {
  const AdoptionDashboardPage({super.key});
  static const routeName = '/AdoptionDashboardPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const AdoptionDashboardPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _AdoptionDashboardPage();
}

class _AdoptionDashboardPage extends State<AdoptionDashboardPage> {
  final List<Widget> _screens = <Widget>[
    HomePage(),
    HealthPage(),
    DailycarePage(),
    AddoptionPage(),
  ];
  int selectedIndex = 3;

  void _onItemTapped(int index) {
    if (index < 3) {

              BottomModels.needPremiumBottomSheet(context);
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: selectedIndex == 0,
      onPopInvoked: (didPop) {
        if (!didPop && selectedIndex != 0) {
          setState(() {
            selectedIndex = 0;
          });
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: AdoptionNavBar(
          onTap: _onItemTapped,
          pageIndex: selectedIndex,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              BottomModels.needPremiumBottomSheet(context);
              // context.push(WagPage.route());
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: AppColors.white),
              borderRadius: Styles.borderRadiusCircular50,
            ),
            child: AppAssestsImage(path: ImageResources.ai2),
          ),
        ),
        body: IndexedStack(index: selectedIndex, children: _screens),
      ),
    );
  }
}
