import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_details/vaccination_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'date_card.dart';

class DateList extends StatelessWidget {
  const DateList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationDetailsBloc, VaccinationDetailsState>(
      builder: (context, state) {
        return Column(
          children: [
            AppCustomListViewBuilder(
              itemCount: state.vaccinationLog?.logs.administered.length ?? 0,
              isExpand: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i) => Styles.gap10,
              itemBuilder: (BuildContext context, int i) {
                final item = state.vaccinationLog?.logs.administered[i];
                return DateCard(
                  isGiven: true,
                  date: item?.administeredAt ?? DateTime.now(),
                  notes: item?.notes,
                );
              },
            ),
            AppCustomListViewBuilder(
              itemCount: state.vaccinationLog?.logs.missed.length ?? 0,
              isExpand: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i) => Styles.gap10,
              itemBuilder: (BuildContext context, int i) {
                final item = state.vaccinationLog?.logs.missed[i];
                return DateCard(
                  isGiven: false,
                  date: item?.scheduledDate ?? DateTime.now(),
                );
              },
            ),
            AppCustomListViewBuilder(
              itemCount: state.vaccinationLog?.logs.future.length ?? 0,
              isExpand: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i) => Styles.gap10,
              itemBuilder: (BuildContext context, int i) {
                final item = state.vaccinationLog?.logs.future[i];
                return DateCard(
                  isGiven: false,
                  date: item?.scheduledDate ?? DateTime.now(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
