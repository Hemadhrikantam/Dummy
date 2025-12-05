import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/pages/add_vaccination_page.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading_widget.dart';
import '../../bloc/vaccinations/vaccinations_bloc.dart';
import 'vaccines_card.dart';

class VaccinesList extends StatelessWidget {
  const VaccinesList({super.key});

  @override
  Widget build(BuildContext context) {
    // if (true) {
    // return EmptyListPage(
    //   imagePath: ImageResources.noVaccination,
    //   title: AppText.letKeepSafe,
    //   subTitle: AppText.trackCoreAndBooster,
    //   onPressed: () {
    //     context.push(AddVaccinationPage.route());
    //   },
    //   buttonName: AppText.addFirstVaccination,
    // );
    // } else {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, dashboardState) {
        return BlocBuilder<VaccinationsBloc, VaccinationsState>(
          builder: (context, state) {
            final items = state.vaccinations;
            return state.vaccinationsStatus.loading
                ? LoadingWidget.circularProgressIndicatorCenter
                : items.isEmpty
                ? EmptyListPage(
                  imagePath: ImageResources.noVaccination,
                  title: "Let's ${dashboardState.petName} keep safe.",
                  subTitle: AppText.trackCoreAndBooster,
                  onPressed: () {
                    context.push(AddVaccinationPage.route());
                  },
                  buttonName: AppText.addFirstVaccination,
                )
                : AppCustomListViewBuilder(
                  itemCount: items.length,
                  isExpand: false,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, i) => Styles.gap10,
                  itemBuilder: (BuildContext context, int i) {
                    return VaccinesCard(vaccination: items[i]);
                  },
                );
          },
        );
      },
    );
  }
}
