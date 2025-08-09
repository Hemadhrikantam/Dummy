import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimationConfig extends StatelessWidget {
  const AnimationConfig({super.key, this.index, required this.child});
  final int? index;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index ?? 0,
      duration: const Duration(milliseconds: 400),
      child: SlideAnimation(
        // horizontalOffset: 50.0,
        verticalOffset: 50,
        child: FadeInAnimation(child: child),
      ),
    );
  }
}
