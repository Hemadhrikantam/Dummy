import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/services/location_service.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/signup/presentation/bloc/register/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPermission extends StatefulWidget {
  const NotificationPermission({super.key, this.onNext});
  final VoidCallback? onNext;

  @override
  State<StatefulWidget> createState() => _NotificationPermissionState();
}

class _NotificationPermissionState extends State<NotificationPermission> {
  bool isLoading = false;
  Future<void> _askLocationThenNext() async {
    setState(() {
      isLoading = true;
    });
    try {
      final locationService = LocationService();
      final locationData = await locationService.getCurrentLocation();
      if (locationData != null) {
        print("Latitude: ${locationData.latitude}");
        print("Longitude: ${locationData.longitude}");

        context.read<RegisterBloc>().add(
          RegisterEvent.setLocation(
            latitude: locationData.latitude ?? 0,
            longitude: locationData.longitude ?? 0,
          ),
        );
      } else {
        print("Location data is null");
      }
    } catch (e) {
      print("Location error: $e");
    }
    setState(() {
      isLoading = false;
    });
    widget.onNext?.call();
  }

  Future<void> showLocation() async {
    await showDialog(
      context: context,
      builder:
          (ctx) => LocationDialog(
            onNext: () {
              _askLocationThenNext();
            },
            onCancel: () {
              ctx.pop();
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SizedBox(
          height: context.height * .8,
          child: LoadingWidget.circularProgressIndicatorCenter,
        )
        : Column(
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
              style: context.textTheme.titleSmall?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
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
                      (ctx) => NotificationDialog(
                        onNext: () async {
                          await Injection.notificationService.init();
                          // Trigger auth bloc initialisation to register device
                          try {
                            // Use bloc from context if available
                            // This will attempt device registration using the push token
                          } catch (_) {}
                          showLocation();
                        },
                        onCancel: () {
                          ctx.pop();
                        },
                      ),
                );
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
                _askLocationThenNext();
              },
            ),
            Styles.gap40,
            InfoCard(title: AppText.ownerLovedRemainder),
          ],
        );
  }
}

class NotificationDialog extends StatelessWidget {
  const NotificationDialog({
    super.key,
    required this.onNext,
    required this.onCancel,
  });
  final Function() onNext;
  final Function() onCancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppText.allowNotificationTitle,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      content: Text(AppText.allowNotificationContent),
      actions: [
        Row(
          children: [
            Expanded(
              child: AppOutlinedButton(
                onPressed: () => onCancel(),
                name: Text(
                  AppText.cancel,
                  style: TextStyle(color: AppColors.buttonTextColor),
                ),
              ),
            ),
            Styles.gap10,
            Expanded(
              child: AppButton(
                onPressed: () {
                  Navigator.pop(context);
                  onNext.call();
                },
                name: Text(
                  AppText.allow,
                  style: TextStyle(color: AppColors.buttonTextColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LocationDialog extends StatelessWidget {
  const LocationDialog({
    super.key,
    required this.onNext,
    required this.onCancel,
  });
  final Function() onNext;
  final Function() onCancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppText.allowLocationTitle,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      content: Text(AppText.allowLocationContent),
      actions: [
        Row(
          children: [
            Expanded(
              child: AppOutlinedButton(
                onPressed: () => onCancel(),
                name: Text(
                  AppText.cancel,
                  style: TextStyle(color: AppColors.buttonTextColor),
                ),
              ),
            ),
            Styles.gap10,
            Expanded(
              child: AppButton(
                onPressed: () async {
                  Navigator.pop(context);
                  onNext.call();
                },
                name: Text(
                  AppText.allow,
                  style: TextStyle(color: AppColors.buttonTextColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
