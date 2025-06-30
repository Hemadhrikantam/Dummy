import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_search_bar.dart';
import 'package:dummy/features/health/presentation/pages/add_medication_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/debouncer.dart';
import '../../../../../core/widgets/filter_button.dart';
import '../../bloc/medications/medications_bloc.dart';
import 'medication_list.dart';

class MedicationsTab extends StatelessWidget {
  const MedicationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final DebouncerClass _debouncer = DebouncerClass();

    return Stack(
      children: [
        RefreshIndicator.adaptive(
          onRefresh: () async {
            context.read<MedicationsBloc>().add(
              MedicationsEvent.medications(null),
            );
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
                          context.read<MedicationsBloc>().add(
                            MedicationsEvent.medications(value),
                          );
                        });
                      },
                    ),
                  ),
                  // Styles.gap10,
                  // CircleAvatar(
                  //   radius: 25,
                  //   backgroundColor: AppColors.stepperColor,
                  //   child: AppIcon(
                  //     onTap: () {
                  //       context.read<MedicationsBloc>().add(
                  //         MedicationsEvent.medications(serachVal),
                  //       );
                  //     },
                  //     icon: Icons.search,
                  //     color: AppColors.white,
                  //   ),
                  // ),
                ],
              ),
              Styles.gap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilterButton(
                    onTap: () {
                      BottomModels.vaccinationFilterSheet(context);
                    },
                  ),
                ],
              ),
              Styles.gap20,
              MedicationList(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              context.push(AddMedicationPage.route());
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
