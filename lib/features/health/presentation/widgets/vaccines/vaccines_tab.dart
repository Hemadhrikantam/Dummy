import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/debouncer.dart';
import '../../../../../core/widgets/filter_button.dart';
import '../../bloc/vaccinations/vaccinations_bloc.dart';
import '../../pages/add_vaccination_page.dart';
import 'vaccines_list.dart';

class VaccinesTab extends StatefulWidget {
  const VaccinesTab({super.key});

  @override
  State<VaccinesTab> createState() => _VaccinesTabState();
}

class _VaccinesTabState extends State<VaccinesTab> {
  final DebouncerClass _debouncer = DebouncerClass();
  String? searchVal;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      // refresh();
    });
    super.initState();
  }

  refresh() {
    context.read<VaccinationsBloc>().add(
      VaccinationsEvent.vaccinations(searchVal),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator.adaptive(
          onRefresh: () async {
            refresh();
          },
          child: ListView(
            children: [
              Styles.gap10,
              Row(
                children: [
                  Expanded(
                    child: SearchButton(
                      hintText: AppText.search,
                      onChanged: (value) {
                        _debouncer.run(() {
                          setState(() {
                            searchVal = value;
                          });
                          refresh();
                        });
                      },
                    ),
                  ),
                  // Styles.gap10,
                  // CircleAvatar(
                  //   radius: 25,
                  //   backgroundColor: AppColors.stepperColor,
                  //   child: AppIcon(icon: Icons.search, color: AppColors.white),
                  // ),
                ],
              ),
              Styles.gap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilterButton(
                    onTap: () {
                      BottomModels.vaccinationFilterSheet(context, (
                        startDate,
                        endDate,
                      ) {
                        context.read<VaccinationsBloc>().add(
                          VaccinationsEvent.filter(startDate, endDate),
                        );
                        context.pop();
                        refresh();
                      });
                    },
                  ),
                ],
              ),
              Styles.gap20,
              VaccinesList(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              context.push(AddVaccinationPage.route());
            },
            child: CircleAvatar(
              backgroundColor: AppColors.stepperColor,
              radius: 30,
              child: AppIcon(icon: Icons.add, color: AppColors.white, size: 40),
            ),
          ),
        ),
      ],
    );
  }
}
