import 'package:dummy/core/widgets/ngo_bottom_bar.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_home_view.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_pets_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';

class NgoHomePage extends StatefulWidget {
  const NgoHomePage({super.key});
  static const routeName = '/NgoHomePage';

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
