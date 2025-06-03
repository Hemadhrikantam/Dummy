import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../pages/pet_dairy/pet_fav_page.dart';

class PetDairyHeader extends StatelessWidget {
  const PetDairyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButtonWidget(),
        Styles.gap8,
        Expanded(
          child: Text(
            AppText.petDairy,
            style: context.textTheme.titleSmall?.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        CustomCard(
          onTap: () {
            context.pushNamed(PetFavPage.routeName);
          },
          borderRadius: Styles.borderRadiusCircular40,
          borderColor: AppColors.white,
          padding: Styles.edgeInsetsAll06,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          child: Icon(Iconsax.heart5, color: AppColors.textRed, size: 27),
        ),
      ],
    );
  }
}
