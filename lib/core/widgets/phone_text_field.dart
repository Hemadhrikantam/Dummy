import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    this.placeHolder,
    this.onChange,
    this.onCountryChange,
    this.controller,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.headerText,
    this.isMandatory = false,
  });
  final String? placeHolder;
  final void Function(PhoneNumber)? onChange;
  final void Function(Country)? onCountryChange;
  final TextEditingController? controller;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final String? headerText;
  final bool isMandatory;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headerText != null)
          MandatoryFieldWidget(
            labelText: headerText ?? '',
            required: isMandatory,
          ),
        Styles.gap6,
        SingleChildScrollView(
          child: IntlPhoneField(
            controller: controller,
            style: TextStyle(
              fontSize: 14,
              color: textColor ?? AppColors.black.withOpacity(0.7),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              counterText: '',
              fillColor: backgroundColor ?? Colors.white,
              hintText: placeHolder,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
              focusedBorder: Styles.outlineInputBorderRadius50.copyWith(
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.black,
                  width: 1,
                ),
              ),
              enabledBorder: Styles.outlineInputBorderRadius50.copyWith(
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.black.withOpacity(0.4),
                  width: 1,
                ),
              ),
              errorBorder: Styles.outlineInputBorderRadius50,
              focusedErrorBorder: Styles.outlineInputBorderRadius50,
            ),
            dropdownTextStyle: const TextStyle(fontSize: 12),
            showCountryFlag: false,
            initialCountryCode: 'IN',
            onChanged: onChange,
            onCountryChanged: onCountryChange,
          ),
        ),
        Styles.gap6,
      ],
    );
  }
}
