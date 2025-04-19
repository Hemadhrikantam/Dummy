import 'package:dummy/core/widgets/app_logo.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [BackButtonWidget(), DashboardLogo()],
    );
  }
}
