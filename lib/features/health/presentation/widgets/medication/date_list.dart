import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/health/domain/entities/medication_log.dart';
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
        // Group logs by calendar date (ignore time) and map to MedicationDateLogModel
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

        // final List<MedicationDate> groupedDates = grouped.entries.map((e) {
        //   final logsForDate = e.value;
        //   bool hasStatus(String slot) => logsForDate.any(
        //         (l) => l.timeslotName.toLowerCase() == slot &&
        //                 l.status.toLowerCase() == 'taken',
        //       );
        //   return MedicationDate(
        //     id: 0,
        //     date: e.key,
        //     morning: hasStatus('morning'),
        //     afternoon: hasStatus('afternoon'),
        //     night: hasStatus('night'),
        //   );
        // }).toList()
        //   ..sort((a, b) => b.date.compareTo(a.date));

        return state.initStatus.loading
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
