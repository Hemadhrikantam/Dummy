import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    required this.icon, super.key,
    this.size =25,
    this.color,
    this.onTap,
  });
  final double? size ;
  final IconData icon;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon, size: size, color: color),
    );
  }
}
