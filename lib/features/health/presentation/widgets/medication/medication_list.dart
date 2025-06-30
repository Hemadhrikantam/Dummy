import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/health/presentation/pages/add_medication_page.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/health/presentation/widgets/medication/medication_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/medications/medications_bloc.dart';

class MedicationList extends StatefulWidget {
  const MedicationList({super.key});

  @override
  State<MedicationList> createState() => _MedicationListState();
}

class _MedicationListState extends State<MedicationList> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<MedicationsBloc>().add(MedicationsEvent.medications(null));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationsBloc, MedicationsState>(
      builder: (context, state) {
        final items = state.medications;
        return state.medicationsStatus.loading
            ? LoadingWidget.circularProgressIndicatorCenter
            : items.isEmpty
            ? EmptyListPage(
              title: AppText.doommiHelpsKeep,
              imagePath: ImageResources.noMedication,
              subTitle: AppText.trackMedicationsTo,
              onPressed: () {
                context.push(AddMedicationPage.route());
              },
              buttonName: AppText.addFirstMedication,
            )
            : AppCustomListViewBuilder(
              itemCount: items.length,
              isExpand: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, i) => Styles.gap10,
              itemBuilder: (BuildContext context, int i) {
                return MedicationsCard(medication: items[i]);
              },
            );
      },
    );
  }
}
