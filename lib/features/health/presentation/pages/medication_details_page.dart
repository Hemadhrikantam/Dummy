import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/health/presentation/bloc/medication_details/medication_details_bloc.dart';
import 'package:dummy/features/health/presentation/pages/edit_medication_page.dart';
import 'package:dummy/features/health/presentation/widgets/medication/date_list.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';
import '../widgets/medication/medication_details_card.dart';

class MedicationDetailsPage extends StatefulWidget {
  const MedicationDetailsPage({super.key, required this.id});
  static const routeName = '/MedicationDetailsPage';
  final int id;
  static Route<T> route<T>(int id) {
    return MaterialPageRoute<T>(
      builder:
          (context) => BlocProvider(
            create: (context) => InjectionBloc.medicationDetailsBloc,
            child: MedicationDetailsPage(id: id),
          ),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<StatefulWidget> createState() => _MedicationDetailsPage();
}

class _MedicationDetailsPage extends State<MedicationDetailsPage> {
  @override
  void initState() {
    context.read<MedicationDetailsBloc>().add(
      MedicationDetailsEvent.init(widget.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.details,
      subTitle: '',
      onlyTitle: true,
      bottom: BottomActionButton(
        child: Row(
          children: [
            Expanded(
              child: AppTextButton(
                onPressed: () {
                  BottomModels.medicationDeleteBottomSheet(context, widget.id);
                },
                backgroundColor: AppColors.white,
                name: AppText.delete,
                textColor: AppColors.red,
              ),
            ),
            Styles.gap10,
            Expanded(
              child: AppButton(
                onPressed: () {
                  context.push(EditMedicationPage.route(widget.id));
                },
                name: Center(
                  child: Text(
                    AppText.edit,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      child: ListView(
        padding: Styles.edgeInsetsOnlyH00,
        children: [
          Padding(
            padding: Styles.edgeInsetsOnlyH15,
            child: MedicationDetailsCard(),
          ),
          Styles.gap15,
          Text(
            AppText.medications,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          DateList(),
        ],
      ),
    );
  }
}
