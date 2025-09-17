import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:dummy/features/profile/presentation/bloc/document_form/document_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/bottom_models.dart';

class AddTimeline extends StatefulWidget {
  const AddTimeline({super.key});

  @override
  State<StatefulWidget> createState() => _AddTimeline();
}

class _AddTimeline extends State<AddTimeline> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<DocumentFormBloc>().add(
      DocumentFormEvent.init(petId ?? 0, null),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyW10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.gap4,
          AppGraber(),
          Styles.gap10,
          const Text(
            "Add",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Styles.gap15,
          _BottomSheetOption(
            text: "Media",
            isSelected: true,
            onTap: () {
              Navigator.pop(context);
              BottomModels.addPetMediaBottomSheet(context);
            },
          ),
          Styles.gap10,
          _BottomSheetOption(
            text: "Documents",
            isSelected: false,
            onTap: () {
              Navigator.pop(context);
              BottomModels.addPetDocumentsBottomSheet(context);
            },
          ),
          Styles.gap15,
        ],
      ),
    );
  }
}

class _BottomSheetOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const _BottomSheetOption({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: Styles.borderRadiusCircular08,
      child: Container(
        width: double.infinity,
        padding: Styles.edgeInsetsAll12,
        decoration: BoxDecoration(
          color:
              isSelected
                  ? AppColors.stepperColor.withOpacity(.2)
                  : AppColors.white,
          borderRadius: Styles.borderRadiusCircular08,
          border: Border.all(
            color: isSelected ? AppColors.stepperColor : AppColors.grey400,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
