import 'package:flutter/material.dart';

class BottomIconData {
  final IconData icon;
  final IconData? inActiveIcon;
  final String name;
  const BottomIconData(
      {required this.icon, required this.name, this.inActiveIcon});
}