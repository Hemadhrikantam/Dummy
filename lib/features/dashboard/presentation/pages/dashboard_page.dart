import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/nav_bar.dart';
import 'package:dummy/features/addoption/presentation/pages/addoption_page.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const routeName = '/DashBoardPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const DashboardPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  final List<Widget> _screens = <Widget>[
    HomePage(),
    HealthPage(),
    DailycarePage(),
    AddoptionPage(),
  ];
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
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
        bottomNavigationBar: NavBar(
          onTap: _onItemTapped,
          pageIndex: selectedIndex,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
            backgroundColor: AppColors.stepperColor,
            elevation: 0,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: AppColors.white),
              borderRadius: Styles.borderRadiusCircular50,
            ),
            child: AppAssestsImage(
              path: ImageResources.ai,
              height: 24,
              width: 24,
            ),
          ),
        ),
        body: IndexedStack(index: selectedIndex, children: _screens),
      ),
    );
  }
}
