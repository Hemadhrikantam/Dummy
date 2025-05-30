import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../utils/toast_message.dart';
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
      readOnly: true,
      onTap: () {
        AppAlert.showToast(message: AppText.comingSoon);
      },
      preffix: const Icon(
        Iconsax.search_normal,
        color: AppColors.primaryColor,
      ),
      bottomGap: true,
      onChanged: onChanged,
      suffix: suffix,
    );
  }
}
