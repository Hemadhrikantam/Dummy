import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class TabModel extends Equatable {
  const TabModel({required this.text, this.icon, this.svgPath});
  final IconData? icon;
  final String? svgPath;
  final String text;

  @override
  List<Object?> get props => [icon, text, svgPath];
}
