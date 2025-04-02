import 'package:flutter/material.dart';

import '../constent/styles.dart';

class AppCustomListViewBuilder extends StatelessWidget {
  const AppCustomListViewBuilder({
    required this.itemCount,
    required this.itemBuilder,
    this.separatorBuilder,
    this.physics,
    this.shrinkWrap,
    this.isExpand = true,
    this.onRefresh,
    this.padding,
    this.scrollDirection = Axis.vertical,
    super.key,
    this.reverse,
    this.controller,
  });
  final Widget? Function(BuildContext context, int i) itemBuilder;
  final Widget Function(BuildContext context, int i)? separatorBuilder;
  final int itemCount;
  final ScrollPhysics? physics;
  final bool? shrinkWrap;
  final bool isExpand;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final Future<void> Function()? onRefresh;
  final bool? reverse;
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    final builder = RefreshIndicator.adaptive(
      onRefresh: onRefresh ?? () async {},
      child: separatorBuilder != null
          ? ListView.separated(
              controller: controller,
              separatorBuilder: separatorBuilder!,
              padding: padding ?? Styles.edgeInsetsOnlyH10,
              itemCount: itemCount,
              itemBuilder: itemBuilder,
              scrollDirection: scrollDirection,
              physics: physics,
              shrinkWrap: shrinkWrap ?? false,
            )
          : ListView.builder(
              controller: controller,
              reverse: reverse ?? false,
              padding: padding ?? Styles.edgeInsetsOnlyH10,
              itemCount: itemCount,
              scrollDirection: scrollDirection,
              itemBuilder: itemBuilder,
              shrinkWrap: shrinkWrap ?? false,
              physics: physics,
            ),
    );

    return isExpand ? Expanded(child: builder) : builder;
  }
}
