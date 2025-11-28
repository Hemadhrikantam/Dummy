import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/custom_header_widget.dart';
import 'package:dummy/features/ngo/presentation/bloc/ngo_home/ngo_home_bloc.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_info_cards.dart';
import 'package:dummy/features/ngo/presentation/widgets/recent_added_pets.dart';
import 'package:dummy/features/profile/presentation/pages/ngo_profile_options_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NgoHomeView extends StatefulWidget {
  const NgoHomeView({super.key});

  @override
  createState() => _NgoHomeView();
}

class _NgoHomeView extends State<NgoHomeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: BlocBuilder<NgoHomeBloc, NgoHomeState>(
        builder: (context, state) {
          return ListView(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Image.asset(ImageResources.dashboardLogo, height: 45),
              //     GestureDetector(
              //       onTap: () {
              //         context.pushNamed(NgoProfileOptionsPage.routeName);
              //       },
              //       child: AppAssestsImage(
              //         path: ImageResources.dog,
              //         height: 45,
              //         width: 45,
              //       ),
              //     ),
              //   ],
              // ),
              CustomHeaderWidget(
                petImage: state.profile?.logoUrl ?? '',
                onProfileTap: () {
                  context.pushNamed(NgoProfileOptionsPage.routeName);
                },
              ),
              Styles.gap15,
              NgoInfoCards(),
              Styles.gap15,
              RecentAddedPets(),
            ],
          );
        },
      ),
    );
  }
}
