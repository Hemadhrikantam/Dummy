import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_icon.dart';
import 'mandatory_field_widget.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.readOnly = false,
    this.hintText,
    this.headerText,
    this.lableText,
    this.icon,
    this.borderRadius = 10,
    this.heigth = 49,
    this.fontSize,
    this.prefixIcon,
    this.sufixIcon,
    this.isMandatory = true,
    this.prefixIconColor,
    this.obscureText = false,
    this.contentPadding,
    this.textAlign = TextAlign.start,
    this.enable = true,
    this.errorText,
    this.suffix,
    this.preffix,
    this.preffixText,
    this.initialValue,
    this.controller,
    this.maxLines = 1,
    this.prefixSvgIconPath,
    this.constraints,
    this.sufixSvgIconPath,
    this.maxLength,
    this.inputFormatters,
    this.textInputAction = TextInputAction.next,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.keyboardType,
    this.focusNode,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.fillColor,
    this.onSufixClick,
    this.border,
    this.onTap,
    this.bottomGap = false,
  });
  final String? hintText;
  final String? lableText;
  final String? headerText;
  final IconData? icon;
  final Widget? suffix;
  final Widget? preffix;
  final String? preffixText;
  final String? errorText;
  final String? prefixSvgIconPath;
  final String? sufixSvgIconPath;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final Color? prefixIconColor;
  final bool? readOnly;

  final double? fontSize;

  final double heigth;
  final TextAlign? textAlign;
  final bool obscureText;
  final String? initialValue;
  final int? maxLength;
  final int maxLines;
  final EdgeInsets? contentPadding;
  final bool enable;
  final bool isMandatory;
  final BoxConstraints? constraints;
  final bool? bottomGap;

  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final double borderRadius;
  final void Function(String value)? onChanged;
  final void Function(String? value)? onSaved;
  final void Function(String? value)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final InputBorder? border;
  final Color? fillColor;
  final VoidCallback? onSufixClick;

  @override
  Widget build(BuildContext context) {
    final needBorder = preffix != null ||
        prefixIcon != null ||
        suffix != null ||
        sufixIcon != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headerText != null)
          MandatoryFieldWidget(
            labelText: headerText ?? '',
            required: isMandatory,
          ),
        if (headerText != null) Styles.gap8,
        InputDecorator(
          expands: true,
          decoration: InputDecoration(
            prefixIconColor: prefixIconColor ?? AppColors.primaryColor,
            prefixIcon:
                prefixIcon != null ? AppIcon(icon: prefixIcon!) : preffix,
            suffixIcon: sufixIcon != null
                ? GestureDetector(
                    onTap: onTap, child: AppIcon(icon: sufixIcon!))
                : suffix,
            constraints: constraints ?? const BoxConstraints(maxHeight: 48),
            fillColor: fillColor ?? AppColors.white,
            filled: true,
            alignLabelWithHint: true,
            contentPadding: EdgeInsets.zero,
            border: border ?? Styles.outlineInputBorderRadius10,
            enabledBorder: border ?? Styles.outlineInputBorderRadius10,
            focusedBorder: border ?? Styles.outlineInputBorderRadius10,
            errorBorder: border ?? Styles.outlineInputBorderRadius10,
          ),
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          child: TextFormField(
            textAlign: textAlign ?? TextAlign.start,
            onTap: onTap,
            readOnly: readOnly ?? false,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            maxLength: maxLength,
            textAlignVertical: TextAlignVertical.center,
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.black,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              labelText: lableText,
              // errorText: errorText,
              enabled: enable,
              alignLabelWithHint: true,
              labelStyle: const TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              hintStyle: TextStyle(
                fontStyle: FontStyle.normal,
                color: AppColors.grey500,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              contentPadding: EdgeInsets.only(
                bottom: needBorder ? 12 : 0,
                top: 10,
                left: 10,
              ),
              border: needBorder
                  ? InputBorder.none
                  : Styles.outlineInputBorderRadius10,
              enabledBorder: needBorder
                  ? InputBorder.none
                  : Styles.outlineInputBorderRadius10,
              focusedBorder: needBorder
                  ? InputBorder.none
                  : Styles.outlineInputBorderRadius10,
              errorBorder: needBorder
                  ? InputBorder.none
                  : Styles.outlineInputBorderRadius10,
            ),
            inputFormatters: inputFormatters,
            onFieldSubmitted: onFieldSubmitted,
            onEditingComplete: onEditingComplete,
            maxLines: maxLines,
            initialValue: initialValue,
            controller: controller,
            obscureText: obscureText,
            focusNode: focusNode,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onChanged: onChanged,
            onSaved: onSaved,
            validator: validator,
          ),
        ),
        if (errorText != null)
          Center(
            child: Text(
              '$errorText',
              style: const TextStyle(
                color: AppColors.textRed,
              ),
            ),
          ),
        if (!bottomGap!) Styles.gap15,
      ],
    );
  }
}
