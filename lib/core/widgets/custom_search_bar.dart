import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../constant/app_colors.dart';
import 'app_custom_text_field.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    required this.hintText,
    super.key,
    this.onChanged,
    this.suffix,
  });
  final String hintText;
  final void Function(String)? onChanged;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText,
      // onTap: () {
      //   AppAlert.showToast(message: AppText.comingSoon);
      // },
      preffix: const Icon(Iconsax.search_normal, color: AppColors.stepperColor),
      onChanged: onChanged,
      suffix: suffix,
    );
  }
}
