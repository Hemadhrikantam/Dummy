import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/nav_bar.dart';
import 'package:dummy/core/widgets/ngo_bottom_bar.dart';
import 'package:dummy/features/addoption/presentation/pages/addoption_page.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/home/presentation/pages/home_page.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_home_view.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_pets_view.dart';
import 'package:dummy/features/wag/presentation/pages/wag_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/constent/app_text.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/utils/bottom_models.dart';
import '../../../../core/widgets/app_icon.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/custom_header_widget.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import '../../../../core/widgets/filter_button.dart';
import '../../../dailycare/presentation/widgets/overview_header_widget.dart';

class NgoHomePage extends StatefulWidget {
  const NgoHomePage({super.key});
  static const routeName = '/DashBoardPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const NgoHomePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _NgoHomePage();
}

class _NgoHomePage extends State<NgoHomePage> {
  final List<Widget> _screens = <Widget>[NgoHomeView(), NgoPetsView()];
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
        bottomNavigationBar: NgoBottomBar(
          onTap: _onItemTapped,
          pageIndex: selectedIndex,
        ),

        body: IndexedStack(index: selectedIndex, children: _screens),
      ),
    );
  }
}
