import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/custom_dropdown.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/features/profile/presentation/widgets/add_pet/add_pet_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPermission extends StatefulWidget {
  const NotificationPermission({super.key, this.onNext});
  final VoidCallback? onNext;

  @override
  State<StatefulWidget> createState() => _NotificationPermissionState();
}

class _NotificationPermissionState extends State<NotificationPermission> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppText.stayOnTop,
          style: context.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
        ),
        Styles.gap12,
        Text(
          AppText.dummyCanSendYouRemainders,
          style: context.textTheme.titleSmall?.copyWith(fontSize: 16,fontWeight: FontWeight.w400),
        ),
        Styles.gap30,
        Image.asset(ImageResources.notificantionImage, height: 120),
        Styles.gap50,
        AppButton(
          name: Text(
            AppText.allow,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.buttonTextColor,
            ),
          ),

          onPressed: () async {
            await showDialog(
              context: context,
              builder:
                  (ctx) => AlertDialog(
                    title: Text(AppText.allowNotificationTitle),
                    content: Text(AppText.allowNotificationContent),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(ctx),
                        child: Text(AppText.cancel),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(ctx);
                          widget.onNext?.call();
                        },
                        child: Text(AppText.allow),
                      ),
                    ],
                  ),
            );
            // context.pushNamed(JoinDummy1Page.routeName);
          },
        ),
        Styles.gap12,
        AppOutlinedButton(
          name: Text(
            AppText.maybeLater,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.buttonTextColor,
            ),
          ),
          onPressed: () {
            widget.onNext?.call();
          },
        ),
        Styles.gap40,
        InfoCard(title: AppText.ownerLovedRemainder),
      ],
    );
  }
}
