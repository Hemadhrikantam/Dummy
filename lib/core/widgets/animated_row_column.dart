import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedColumn extends StatelessWidget {
  const AnimatedColumn({
    super.key,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: List.generate(
          children.length,
          (index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              verticalOffset: 100,
              child: FadeInAnimation(child: children[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedRow extends StatelessWidget {
  const AnimatedRow({
    super.key,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: List.generate(
          children.length,
          (index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              verticalOffset: 100,
              child: FadeInAnimation(child: children[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedListController {
  final List<VoidCallback> _listeners = [];

  void addListener(VoidCallback listener) => _listeners.add(listener);
  void removeListener(VoidCallback listener) => _listeners.remove(listener);

  /// Call this from parent to replay the animation
  void replay() {
    for (final l in List<VoidCallback>.from(_listeners)) {
      l();
    }
  }
}

class AnimatedListView extends StatefulWidget {
  const AnimatedListView({
    super.key,
    required this.children,
    this.scrollDirection = Axis.vertical,
    this.padding,
    this.physics,
    this.controller,
    this.scrollController,
  });

  final List<Widget> children;
  final Axis scrollDirection;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final AnimatedListController? controller;
  final ScrollController? scrollController;

  @override
  State<AnimatedListView> createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  Key _animKey = UniqueKey();
  late final ScrollController _internalScrollController;
  bool get _ownsScrollController => widget.scrollController == null;

  void _replayAnimations() {
    setState(() {
      _animKey = UniqueKey(); // forces AnimationLimiter to rebuild & re-run
    });
  }

  @override
  void initState() {
    super.initState();
    _internalScrollController = widget.scrollController ?? ScrollController();
    widget.controller?.addListener(_replayAnimations);
  }

  @override
  void didUpdateWidget(covariant AnimatedListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller?.removeListener(_replayAnimations);
      widget.controller?.addListener(_replayAnimations);
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_replayAnimations);
    if (_ownsScrollController) {
      _internalScrollController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      key: _animKey,
      child: ListView(
        controller: _internalScrollController,
        scrollDirection: widget.scrollDirection,
        padding: widget.padding,
        physics: widget.physics,
        children: List.generate(
          widget.children.length,
          (index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 500),
            child: SlideAnimation(
              verticalOffset: 100,
              child: FadeInAnimation(child: widget.children[index]),
            ),
          ),
        ),
      ),
    );
  }
}
