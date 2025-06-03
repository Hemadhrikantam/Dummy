import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mandatory_field_widget.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final String? headerText;
  final IconData? icon;
  final Widget? suffix;
  final Widget? preffix;
  final String? preffixText;
  final String? errorText;
  final double? fontSize;

  final double heigth;
  final TextAlign textAlign;
  final bool obscureText;
  final String? initialValue;
  final int? maxLength;
  final int maxLines;
  final bool contentPedding;
  final bool enable;
  final IconData? suffixIcon;
  final bool? readOnly;
  final bool isMandatory;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final BorderRadius? borderRadius;
  final void Function(String)? onChanged;
  final Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final bool? headerExtra;
  final BoxConstraints? constraints;
  final Color? suffixIconColor;

  const AppTextFormField({
    super.key,
    this.hintText,
    this.headerText,
    this.icon,
    this.suffix,
    this.preffix,
    this.preffixText,
    this.errorText,
    this.fontSize,
    this.heigth = 49,
    this.textAlign = TextAlign.start,
    this.obscureText = false,
    this.initialValue,
    this.maxLength,
    this.maxLines = 1,
    this.contentPedding = true,
    this.enable = true,
    this.suffixIcon,
    this.readOnly,
    this.inputFormatters,
    this.controller,
    this.borderRadius,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.focusNode,
    this.border,
    this.focusedBorder,
    this.headerExtra = false,
    this.isMandatory = false,
    this.constraints, this.suffixIconColor,
  });

  @override
  Widget build(BuildContext context) {
    double? boxHeight =
        maxLines > 1
            ? null
            : (errorText != null || maxLength != null ? heigth + 25 : heigth);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headerText != null)
          MandatoryFieldWidget(
            labelText: headerText ?? '',
            required: isMandatory,
          ),
        if (headerText != null) Styles.gap8,
        SizedBox(
          height: boxHeight,
          child: TextFormField(
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            readOnly: readOnly ?? false,
            cursorColor: AppColors.primaryColor,
            maxLength: maxLength,
            style: GoogleFonts.instrumentSans(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.black,
            ),
            textAlign: textAlign,
            decoration: InputDecoration(
              suffixIconColor: AppColors.primaryColor,
              focusColor: AppColors.primaryColor,
              prefixStyle: GoogleFonts.inter(color: AppColors.black),
              prefixIcon: preffix,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              fillColor: AppColors.white,
              filled: true,
              // suffix: suffix,
              prefixText: preffixText,
              hintText: hintText ?? 'Enter',
              errorText: errorText,
              enabled: enable,
              alignLabelWithHint: true,
              suffixIcon:
                  suffixIcon != null
                      ? Padding(
                        padding: Styles.edgeInsetsOnlyW15,
                        child: Icon(suffixIcon, color: AppColors.black),
                      )
                      : Padding(
                        padding: Styles.edgeInsetsOnlyW15,
                        child: suffix,
                      ),
              suffixIconConstraints: const BoxConstraints(
                minHeight: 24,
                minWidth: 24,
              ),
              hintStyle: GoogleFonts.instrumentSans(
                fontStyle: FontStyle.normal,
                color: AppColors.grey600,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: borderRadius ?? Styles.borderRadiusCircular40,
                borderSide: const BorderSide(color: AppColors.grey400),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: borderRadius ?? Styles.borderRadiusCircular40,
                borderSide: const BorderSide(color: AppColors.grey400),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: borderRadius ?? Styles.borderRadiusCircular40,
                borderSide: const BorderSide(color: AppColors.buttonTextColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: borderRadius ?? Styles.borderRadiusCircular40,
                borderSide: const BorderSide(color: AppColors.textRed),
              ),
            ),
            inputFormatters: inputFormatters,
            onFieldSubmitted: onFieldSubmitted,
            onEditingComplete: onEditingComplete,
            onTap: onTap,
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
      ],
    );
  }
}
