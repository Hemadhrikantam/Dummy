import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:dummy/features/profile/presentation/bloc/account/account_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/app_icon.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class ManageFamilyMembersBottomSheetContent extends StatelessWidget {
  const ManageFamilyMembersBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.38,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: ScrollController(),
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            Styles.gap6,
            AppGraber(),
            Styles.gap16,
            Text(
              AppText.members,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Styles.gap10,
            BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) {
                final users =
                    (state.accountDetails?.users ?? []).reversed.toList();
                return users.isEmpty
                    ? Center(
                      child: Text(
                        'No member added yet',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey600,
                        ),
                      ),
                    )
                    : AppCustomListViewBuilder(
                      // controller: scrollController,
                      isExpand: false,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: users.length,
                      itemBuilder: (context, i) {
                        final user = users[i];
                        return Padding(
                          padding: Styles.edgeInsetsOnlyH06,
                          child: CustomCard(
                            onTap: () {},
                            child: Row(
                              children: [
                                TextValueWidget(
                                  text: user.role,
                                  value: user.memberName,
                                ),
                                Styles.spacer,
                                if (user.role.toLowerCase() != 'admin')
                                  AppIcon(
                                    onTap: () {
                                      BottomModels.memberDeleteBottomSheet(
                                        context,
                                      );
                                    },
                                    icon: Iconsax.trush_square,
                                    color: AppColors.red,
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
              },
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextButton(
                    onPressed: () {
                      context.pop();
                    },
                    radius: 50,
                    borderColor: AppColors.transparent,
                    backgroundColor: AppColors.buttonBackground,
                    name: AppText.addMember,
                    textColor: AppColors.buttonTextColor,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
