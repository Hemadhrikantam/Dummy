import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/features/health/presentation/bloc/medication_details/medication_details_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/medication/date_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DateList extends StatelessWidget {
  const DateList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationDetailsBloc, MedicationDetailsState>(
      builder: (context, state) {
        return AppCustomListViewBuilder(
          itemCount: state.dates.length,
          isExpand: false,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, i) => Styles.gap10,
          itemBuilder: (BuildContext context, int i) {
            return DateCard(date: state.dates[i],);
          },
        );
      },
    );
  }
}
