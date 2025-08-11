import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/nav_bar.dart';
import 'package:dummy/features/addoption/presentation/pages/addoption_page.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/home/presentation/pages/home_page.dart';
import 'package:dummy/features/wag/presentation/pages/wag_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const routeName = '/DashBoardPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => DashboardPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  // int selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = <Widget>[
      HomePage(),
      BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return HealthPage(selectedPet: state.selectedPet);
        },
      ),
      BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          LogUtility.info('dashboard pet ${state.selectedPet?.id ?? 0}');
          return DailycarePage(
            selectedPet: state.selectedPet,
            selectedPetId: state.selectedPet?.id ?? 0,
          );
        },
      ),
      AddoptionPage(),
    ];
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return PopScope(
          canPop: state.pageIndex == 0,
          onPopInvoked: (didPop) {
            if (!didPop && state.pageIndex != 0) {
              context.read<DashboardBloc>().add(DashboardEvent.changePage(0));
            }
          },
          child: Scaffold(
            backgroundColor: AppColors.white,
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: NavBar(
              onTap: (i) {
                context.read<DashboardBloc>().add(DashboardEvent.changePage(i));
              },
              pageIndex: state.pageIndex,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
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
            body: IndexedStack(index: state.pageIndex, children: screens),
          ),
        );
      },
    );
  }
}
