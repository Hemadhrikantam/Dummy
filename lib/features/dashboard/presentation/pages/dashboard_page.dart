import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/nav_bar.dart';
import 'package:dummy/features/addoption/presentation/pages/addoption_page.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/home/presentation/pages/home_page.dart';
import 'package:dummy/features/wag/presentation/pages/wag_page.dart';
import 'package:flutter/material.dart';


class DashboardPage extends StatefulWidget {
  final DashboardPetDetails selectedPet;
 const DashboardPage({super.key, required this.selectedPet});
  static const routeName = '/DashBoardPage';

  static Route<T> route<T>(DashboardPetDetails selectedPet)  {
    return MaterialPageRoute<T>(
      builder: (context) => DashboardPage(selectedPet: selectedPet,),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = <Widget>[
    HomePage(),
    HealthPage(selectedPet: widget.selectedPet,),
    DailycarePage(selectedPet: widget.selectedPet,),
    AddoptionPage(),
  ];
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
            elevation: 0,
            onPressed: () {
              context.push(WagPage.route());
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: AppColors.white),
              borderRadius: Styles.borderRadiusCircular50,
            ),
            child: AppAssestsImage(path: ImageResources.dogTail),
          ),
        ),
        body: IndexedStack(index: selectedIndex, children: _screens),
      ),
    );
  }
}
