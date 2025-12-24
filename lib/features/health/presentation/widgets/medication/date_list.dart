import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/health/domain/entities/medication_log.dart';
import 'package:dummy/features/health/presentation/bloc/medication_details/medication_details_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/medication/date_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DateList extends StatefulWidget {
  const DateList({super.key});

  @override
  State<DateList> createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  bool isFirstTime = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MedicationDetailsBloc, MedicationDetailsState>(
      listener: (context, state) {
        if (state.initStatus.success) {
          setState(() {
            isFirstTime = false;
          });
        }
      },
      builder: (context, state) {
        final Map<DateTime, MedicationDateLogModel> grouped = {};
        for (final log in state.logs) {
          final key = DateTime(log.date.year, log.date.month, log.date.day);
          grouped
              .putIfAbsent(
                key,
                () => MedicationDateLogModel(date: key, logs: []),
              )
              .logs
              .add(log);
        }

        return state.initStatus.loading && isFirstTime
            ? LoadingWidget.circularProgressIndicatorCenter
            : AppCustomListViewBuilder(
              itemCount: grouped.keys.length,
              isExpand: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i) => Styles.gap10,
              itemBuilder: (BuildContext context, int i) {
                return DateCard(date: grouped.values.elementAt(i));
              },
            );
      },
    );
  }
}

class MedicationDateLogModel {
  final DateTime date;
  final List<MedicationLog> logs;

  MedicationDateLogModel({required this.date, required this.logs});
}
