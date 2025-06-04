import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constent/app_colors.dart';
import '../constent/styles.dart';

class AppAssestsImage extends StatelessWidget {
  const AppAssestsImage({
    required this.path,
    super.key,
    this.height,
    this.width,
    this.cacheHeight,
    this.cacheWidth,
    this.borderRadius,
    this.boxFit = BoxFit.cover,
  });
  final String path;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final int? cacheHeight;
  final int? cacheWidth;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? Styles.borderRadiusCircular10,
      child: Image.asset(
        path,
        fit: boxFit,
        height: height ?? MediaQuery.of(context).size.height,
        width: width ?? MediaQuery.of(context).size.width,
        // height: height,
        // width: width,
        cacheHeight: cacheHeight,
        cacheWidth: cacheWidth,
        errorBuilder: (
          BuildContext context,
          Object exception,
          StackTrace? stackTrace,
        ) {
          return const SizedBox.shrink();
        },
        frameBuilder: (
          BuildContext context,
          Widget child,
          int? frame,
          bool wasSynchronouslyLoaded,
        ) {
          if (wasSynchronouslyLoaded) {
            return child;
          }
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOut,
            child: child,
          );
        },
      ),
    );
  }
}

class AppSVGImage extends StatelessWidget {
  const AppSVGImage({
    required this.path,
    super.key,
    this.colorFilter,
    this.color,
    this.height,
    this.width,
    this.boxFit,
  });
  final String path;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final ColorFilter? colorFilter;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SvgPicture.asset(
        path,
        color: color,
        fit: boxFit ?? BoxFit.cover,
        colorFilter: colorFilter,
        semanticsLabel: path,
        height: height ?? 15,
        // alignment: Alignment.center,
        width: width,
      ),
    );
  }
}

class AppFileImage extends StatelessWidget {
  const AppFileImage({
    required this.file,
    super.key,
    this.height,
    this.cacheHeight,
    this.cacheWidth,
    this.width,
    this.boxFit = BoxFit.cover,
  });
  final File file;
  final BoxFit? boxFit;
  final double? height;
  final int? cacheHeight;
  final int? cacheWidth;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Image.file(
      file,
      fit: boxFit,
      height: height,
      width: width,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      errorBuilder: (
        BuildContext context,
        Object exception,
        StackTrace? stackTrace,
      ) {
        return Styles.sizedBox;
      },
      frameBuilder: (
        BuildContext context,
        Widget child,
        int? frame,
        bool wasSynchronouslyLoaded,
      ) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeOut,
          child: child,
        );
      },
    );
  }
}

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    required this.url,
    super.key,
    this.height,
    this.width,
    this.cachedHeight,
    this.boxFit = BoxFit.cover,
  });
  final String url;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final int? cachedHeight;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit,
      height: height,
      width: width,
      memCacheHeight: cachedHeight,
      memCacheWidth: cachedHeight,
      progressIndicatorBuilder: (_, value, DownloadProgress progress) {
        return const Center(
          child: CircularProgressIndicator(color: AppColors.primaryColor),
        );
      },
      errorWidget: (_, value, data) {
        return Styles.sizedBox;
        // return const Placeholder(color: AppColors.appPrimaryColor, strokeWidth: 1);
      },
    );
  }
}
