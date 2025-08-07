import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
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

  static Route<T> route<T>(int selectedPetId) {
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

  int selectedIndex = 0;

  void _handlePetSelected(int index) {
    final pet = context.read<DashboardBloc>().state.dashboardPetDetails[index];

    setState(() {
      selectedPet = pet;
      selectedIndex = index;
    });
    LogUtility.info('eid  ${selectedPet?.id ?? 0}');
    context.read<DashboardBloc>().add(
      DashboardEvent.selectedPetId(selectedPet?.id ?? 0),
    );
    context.read<DashboardBloc>().add(DashboardEvent.selectedPet(pet));
    context.read<DashboardBloc>().add(DashboardEvent.petName(pet.petName));
    context.read<DashboardBloc>().add(
      DashboardEvent.petImage(pet.petImage.petImage),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 0), () {
      context.read<DashboardBloc>().add(DashboardEvent.dashboardPets());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final petList = state.dashboardPetDetails;
        if (petList.isEmpty) {
          return const DashboardShimmer();
        }
        selectedPet ??= state.selectedPet ?? petList.first;
        return MaterialBaseScreen(
          gradient:
              state.initStatus.loading
                  ? const LinearGradient(
                    colors: [AppColors.white, AppColors.white, AppColors.white],
                  )
                  : null,
          child:
              state.initStatus.loading || petList.isEmpty
                  ? const DashboardShimmer()
                  : ListView(
                    children: [
                      CustomHeaderWidget(petImage: state.petImage),
                      Styles.gap15,
                      PetListHomeWidget(
                        dashboardPetDetails: petList,
                        onPetSelected: _handlePetSelected,
                        selectedIndex:
                            state.selectedPet == null
                                ? selectedIndex
                                : state.dashboardPetDetails.indexOf(
                                  state.selectedPet!,
                                ),
                      ),
                      if (selectedPet != null)
                        PetInformationWidget(dashboardPetDetails: selectedPet),
                      Styles.gap15,
                      QuickActionsWidget(
                        selectedPet: selectedPet!,
                        selectedPetId: selectedPet?.id ?? 0,
                      ),
                      Styles.gap15,

                      TipOfTheDayCard(selectedPet: selectedPet!),

                      Styles.gap15,
                      const NearYouCard(),
                    ],
                  ),
        );
      },
    );
  }
}
