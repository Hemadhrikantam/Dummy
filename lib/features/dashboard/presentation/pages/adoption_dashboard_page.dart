import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/adoption_nav_bar.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/addoption/presentation/pages/addoption_page.dart';
import 'package:dummy/features/dailycare/presentation/pages/dailycare_page.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/pages/health_page.dart';
import 'package:dummy/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../wag/presentation/pages/wag_page.dart';

class AdoptionDashboardPage extends StatefulWidget {
  final DashboardPetDetails? selectedPet;
  const AdoptionDashboardPage({super.key, this.selectedPet});
  static const routeName = '/AdoptionDashboardPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => AdoptionDashboardPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _AdoptionDashboardPage();
}

class _AdoptionDashboardPage extends State<AdoptionDashboardPage> {
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
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // context.read<DashboardBloc>().add(DashboardEvent.dashboardPets());
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = <Widget>[
      HomePage(),
      HealthPage(selectedPet: widget.selectedPet),
      BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return DailycarePage(
            selectedPet: widget.selectedPet,
            selectedPetId: state.selectedPet?.id ?? '',
          );
        },
      ),
      AddoptionPage(),
    ];
    return Scaffold(
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
          child: AppAssestsImage(path: ImageResources.dogTail),
        ),
      ),
      body: IndexedStack(index: selectedIndex, children: screens),
    );
  }
}
