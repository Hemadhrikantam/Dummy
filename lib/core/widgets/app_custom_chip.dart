import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:flutter/material.dart';

import '../constent/app_colors.dart';
import '../constent/styles.dart';

class AppCustomChipWidget extends StatelessWidget {
  const AppCustomChipWidget({
    required this.subTitle,
    super.key,
    this.backgroundColor,
    this.textColor,
    this.title,
    this.padding,
    this.textOverflow,
    this.maxLines,
    this.textAlign,
  });
  final Color? backgroundColor;
  final Color? textColor;
  final String? title;
  final String subTitle;
  final EdgeInsets? padding;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.themeData.disabledColor,
        borderRadius: Styles.borderRadiusCircular50,
      ),
      child: Padding(
        padding: padding ?? Styles.chip,
        child: AppCustomText(
          textAlign: textAlign ?? TextAlign.center,
          subTitle: subTitle,
          textOverflow: textOverflow,
          maxLines: maxLines,
          textColor: textColor ?? AppColors.black,
          title: title,
          titleFont: 10,
          subTitleFont: 10,
        ),
      ),
    );
  }
}

class AppCustomText extends StatelessWidget {
  const AppCustomText({
    required this.subTitle,
    super.key,
    this.title,
    this.textColor,
    this.titleFont,
    this.subTitleFont,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.constraints,
  });
  final Color? textColor;
  final String? title;
  final double? titleFont;
  final double? subTitleFont;
  final String subTitle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints ?? BoxConstraints(maxWidth: context.width * .8),
      child: Text.rich(
        textAlign: textAlign ?? TextAlign.start,
        TextSpan(
          children: [
            if (title != null)
              TextSpan(
                text: title,
                style: TextStyle(
                  fontSize: titleFont ?? 10,
                  color: textColor ?? AppColors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            TextSpan(
              text: subTitle,
              style: TextStyle(
                fontSize: subTitleFont ?? 10,
                color: textColor ?? AppColors.black,
              ),
            ),
          ],
        ),
        overflow: textOverflow,
        maxLines: maxLines,
        softWrap: true,
      ),
    );
  }
}
