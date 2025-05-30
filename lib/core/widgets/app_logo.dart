import 'package:flutter/material.dart';

import 'app_assets_image.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = 35});
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: const AppAssestsImage(path: ''),
    );
  }
}

class AppLogoRow extends StatelessWidget {
  const AppLogoRow({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [AppLogo(size: size)],
    );
  }
}
