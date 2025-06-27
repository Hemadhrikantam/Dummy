import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/core/widgets/shimmer_widget.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/home/presentation/widgets/near_you_card.dart'
    show NearYouCard;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dashboard/presentation/bloc/dashboard_bloc.dart';
import '../widgets/pet_information_widget.dart';
import '../widgets/pet_list_home_widget.dart';
import '../widgets/quick_actions_widget.dart';
import '../widgets/tip_of_the_day_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/HomePage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const HomePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  DashboardPetDetails? selectedPet;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<DashboardBloc>().add(DashboardEvent.dashboardPets());
    });
  }

  void _handlePetSelected(DashboardPetDetails pet) {
    setState(() {
      selectedPet = pet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return MaterialBaseScreen(
          gradient:state.initStatus.loading? LinearGradient(
            colors: [AppColors.white, AppColors.white, AppColors.white],
          ):null,
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              final petList = state.dashboardPetDetails;
              if (petList.isEmpty) {
                return const DashboardShimmer();
              }
              selectedPet ??= petList.first;
              return state.initStatus.loading
                  ? const DashboardShimmer()
                  : ListView(
                    children: [
                      CustomHeaderWidget(),
                      Styles.gap15,

                      PetListHomeWidget(
                        dashboardPetDetails: petList,
                        onPetSelected: _handlePetSelected,
                      ),
                      if (selectedPet != null)
                        PetInformationWidget(dashboardPetDetails: selectedPet!),

                      Styles.gap15,
                      QuickActionsWidget(),
                      Styles.gap15,
                      TipOfTheDayCard(),
                      Styles.gap15,
                      NearYouCard(),
                    ],
                  );
            },
          ),
        );
      },
    );
  }
}
