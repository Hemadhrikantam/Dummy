import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_details/vaccination_details_bloc.dart';
import 'package:dummy/features/health/presentation/pages/edit_vaccination_page.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';
import '../widgets/vaccines/date_list.dart';
import '../widgets/vaccines/vaccination_details_card.dart';

class VaccinationDetailsPage extends StatefulWidget {
  const VaccinationDetailsPage({super.key, required this.id});
  static const routeName = '/VaccinationDetailsPage';
  final String id;
  static Route<T> route<T>({required String id}) {
    return MaterialPageRoute<T>(
      builder: (context) => VaccinationDetailsPage(id: id),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<StatefulWidget> createState() => _VaccinationDetailsPage();
}

class _VaccinationDetailsPage extends State<VaccinationDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<VaccinationDetailsBloc>().add(
      VaccinationDetailsEvent.init(widget.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationDetailsBloc, VaccinationDetailsState>(
      builder: (context, state) {
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
                      BottomModels.veccinationDeleteBottomSheet(
                        context,
                        id: widget.id,
                      );
                      // BottomModels.medicationTakingBottomSheet(context);
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
                      context.push(EditVaccinationPage.route(id: widget.id));
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
            padding: Styles.edgeInsetsOnlyW08,
            children: [
              Padding(
                padding: Styles.edgeInsetsOnlyH15,
                child: VaccinationDetailsCard(),
              ),
              Styles.gap15,
              Text(
                AppText.vaccinations,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              DateList(),
              Styles.gap20,
              Styles.gap20,
              Styles.gap20,
            ],
          ),
        );
      },
    );
  }
}
