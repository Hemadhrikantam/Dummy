import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/features/addoption/presentation/bloc/adoption/adoption_bloc.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/widgets/base_screen.dart';
import '../../../../core/widgets/buttons/app_button.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';

class AdoptionDetailsPage extends StatelessWidget {
  const AdoptionDetailsPage({super.key, this.adoption, this.allTab = false});
  static const routeName = '/MedicationDetailsPage';
  final Listing? adoption;
  final bool allTab;
  static Route<T> route<T>(Listing? adoption, bool allTab) {
    return MaterialPageRoute<T>(
      builder:
          (context) => AdoptionDetailsPage(adoption: adoption, allTab: allTab),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.details,
      subTitle: '',
      onlyTitle: true,
      bottom:
          allTab
              ? null
              : Container(
                width: double.infinity,
                padding: Styles.edgeInsetsAll12,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey700,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextButton(
                        onPressed: () {
                          BottomModels.adoptionDeleteBottomSheet(
                            context,
                            adoption?.petName ?? '',
                            adoption?.id ?? '',
                            false,
                          );
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
                          BottomModels.addAdoptionBottomSheet(
                            context,
                            id: adoption?.id,
                            petId: adoption?.petId,
                          );
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
            child: NgoAdoptionDetailsCard(
              isAllPet: allTab,
              adoption: adoption,
              onMarkAsAdopted: (value) {
                final id = adoption?.id ?? '';
                final newStatus = (value) ? 'adopted' : 'available';
                context.read<AdoptionBloc>().add(
                  AdoptionEvent.markStatus(id: id, status: newStatus),
                );
              },
            ),
          ),
          Styles.gap80,
        ],
      ),
    );
  }
}
