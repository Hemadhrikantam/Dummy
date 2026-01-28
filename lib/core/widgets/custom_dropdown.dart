// ignore_for_file: always_put_required_named_parameters_first

import 'package:dropdown_search/dropdown_search.dart';
import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';
 

import '../models/drop_item.dart';

class CustomDropdownSearch extends StatelessWidget {
  const CustomDropdownSearch({
    super.key,
    required this.items,
    this.label,
    this.lableColor,
    this.errorText,
    this.selectedItem,
    this.clearText = false,
    this.focusedBorder,
    this.customWidget,
    this.onClear,
    this.itemBuilder,
    this.emptyBuilder,
    this.onChanged,
    this.validator,
    required this.title,
    this.isMandatory = false,
    this.fontSize,
    this.itemAsString,
    this.hintTextColor,
    this.hintTextFontWeight,
    this.onFind,
    this.enabled = true,
  });
  final InputBorder? focusedBorder;
  final String? label;
  final Color? lableColor;
  final String? errorText;
  final bool clearText;
  final VoidCallback? onClear;
  final DropItem? selectedItem;
  final Widget? customWidget;
  final String title;
  final bool? isMandatory;
  final Widget Function(BuildContext context, DropItem item, bool isSelected)?
  itemBuilder;
  final Widget Function(BuildContext context, String value)? emptyBuilder;
  final Future<List<DropItem>> Function(String filter)? onFind;

  final List<DropItem> items;
  final void Function(DropItem? item)? onChanged;
  final String? Function(DropItem? item)? validator;
  final double? fontSize;
  final String Function(DropItem)? itemAsString;
  final Color? hintTextColor;
  final FontWeight? hintTextFontWeight;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != '') Styles.gap10,
        if (title != '')
          MandatoryFieldWidget(
            labelText: title,
            required: isMandatory ?? false,
          ),
        if (title != '') Styles.gap6,
        DropdownSearch<DropItem>(
          enabled: enabled,
          asyncItems: onFind,
          dropdownButtonProps: DropdownButtonProps(
            icon: Icon(Icons.keyboard_arrow_down_outlined),
          ),
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              isDense: true,
              contentPadding: Styles.edgeInsetsAll12,
              prefixIconColor: AppColors.buttonTextColor,
              hintText: label ?? 'Select',
              fillColor: AppColors.white,
              filled: true,
              hintStyle: TextStyle(
                fontFamily: 'InstrumentSans',
                fontSize: fontSize ?? 14,
                fontWeight: hintTextFontWeight ?? FontWeight.w400,
                color: hintTextColor ?? AppColors.grey700,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular50,
                borderSide: BorderSide(color: AppColors.grey500!, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular50,
                borderSide: BorderSide(color: AppColors.grey500!, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular40,
                borderSide: BorderSide(
                  color: AppColors.buttonTextColor,
                  width: 1.5,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular40,
                borderSide: BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular40,
                borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
              ),
            ),
            baseStyle: context.textTheme.titleSmall?.copyWith(
              fontSize: fontSize,
            ),
          ),
          dropdownBuilder: (context, selectedItem) {
            return Container(
              constraints: const BoxConstraints(minHeight: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      selectedItem?.value ?? label ?? 'Select',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight:
                            selectedItem == null
                                ? FontWeight.w400
                                : FontWeight.w600,
                        color:
                            selectedItem == null
                                ? AppColors.grey700
                                : AppColors.black,
                        fontSize: fontSize??18,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            );
          },
          selectedItem: selectedItem,
          compareFn: (item1, item2) => item1.value == item2.value,
          itemAsString: itemAsString ?? (item) => item.value,
          items: items,
          validator: validator,
          onChanged: onChanged,
          popupProps: PopupProps.modalBottomSheet(
                title: Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 6),
    child: Center(
      child: Container(
        width: 120,
        height: 4,
        decoration: BoxDecoration(
          color: AppColors.grey300,
          borderRadius: Styles.borderRadiusCircular08,
        ),
      ),
    ),
  ),
            showSearchBox: true,
            isFilterOnline: true,
            showSelectedItems: true,
            searchFieldProps: TextFieldProps(
              style: const TextStyle(fontFamily: 'InstrumentSans', fontSize: 14),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: Styles.edgeInsetsAll12,
                prefixIconColor: AppColors.buttonTextColor,
                hintText: label ?? 'Select',
                fillColor: AppColors.white,
                filled: true,
                hintStyle: TextStyle(
                  fontFamily: 'InstrumentSans',
                  fontSize: fontSize ?? 14,
                  fontWeight: hintTextFontWeight ?? FontWeight.w400,
                  color: hintTextColor ?? AppColors.grey700,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular50,
                  borderSide: BorderSide(color: AppColors.grey500!, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular40,
                  borderSide: BorderSide(
                    color: AppColors.buttonTextColor,
                    width: 1.5,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular40,
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular40,
                  borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
                ),
              ),
            ),
            modalBottomSheetProps: const ModalBottomSheetProps(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Styles.radiusCircular20,
                  topRight: Styles.radiusCircular20,
                ),
              ),
            ),
            emptyBuilder:
                (context, searchEntry) => Center(child: Text('No Items Found')),
            itemBuilder:
                itemBuilder ??
                (context, item, isSelected) {
                  return Container(
                    padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyH04,
                    margin: Styles.edgeInsetsAll04 + Styles.edgeInsetsOnlyW10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: AppColors.grey),
                    ),
                    child: Text(
                      item.value,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontSize: fontSize ?? 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
          ),
        ),
        if (title != '') Styles.gap10,
      ],
    );
  }
}

class CustomStringDropdownSearch extends StatelessWidget {
  const CustomStringDropdownSearch({
    super.key,
    required this.items,
    this.label,
    this.lableColor,
    this.errorText,
    this.selectedItem,
    this.clearText = false,
    this.focusedBorder,
    this.customWidget,
    this.onClear,
    this.itemBuilder,
    this.emptyBuilder,
    this.onChanged,
    this.validator,
    required this.title,
    this.isMandatory = false,
    this.fontSize,
    this.itemAsString,
    this.hintTextColor,
    this.hintTextFontWeight,
    this.onFind,
  });
  final InputBorder? focusedBorder;
  final String? label;
  final Color? lableColor;
  final String? errorText;
  final bool clearText;
  final VoidCallback? onClear;
  final DropStringItem? selectedItem;
  final Widget? customWidget;
  final String title;
  final bool? isMandatory;
  final Widget Function(
    BuildContext context,
    DropStringItem item,
    bool isSelected,
  )?
  itemBuilder;
  final Widget Function(BuildContext context, String value)? emptyBuilder;
  final Future<List<DropStringItem>> Function(String filter)? onFind;

  final List<DropStringItem> items;
  final void Function(DropStringItem? item)? onChanged;
  final String? Function(DropStringItem? item)? validator;
  final double? fontSize;
  final String Function(DropStringItem)? itemAsString;
  final Color? hintTextColor;
  final FontWeight? hintTextFontWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != '') Styles.gap10,
        if (title != '')
          MandatoryFieldWidget(
            labelText: title,
            required: isMandatory ?? false,
          ),
        if (title != '') Styles.gap6,
        DropdownSearch<DropStringItem>(
          asyncItems: onFind,
          dropdownButtonProps: DropdownButtonProps(
            icon: Icon(Icons.keyboard_arrow_down_outlined),
          ),
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              isDense: true,
              contentPadding: Styles.edgeInsetsAll12,
              prefixIconColor: AppColors.buttonTextColor,
              hintText: label ?? 'Select',
              fillColor: AppColors.white,
              filled: true,
              hintStyle: TextStyle(
                fontFamily: 'InstrumentSans',
                fontSize: fontSize ?? 14,
                fontWeight: hintTextFontWeight ?? FontWeight.w400,
                color: hintTextColor ?? AppColors.grey700,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular50,
                borderSide: BorderSide(color: AppColors.grey500!, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular40,
                borderSide: BorderSide(
                  color: AppColors.buttonTextColor,
                  width: 1.5,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular40,
                borderSide: BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: Styles.borderRadiusCircular40,
                borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
              ),
            ),
            baseStyle: context.textTheme.titleSmall?.copyWith(
              fontSize: fontSize,
            ),
          ),
          dropdownBuilder: (context, selectedItem) {
            return Container(
              constraints: const BoxConstraints(minHeight: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      selectedItem?.value ?? label ?? 'Select',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight:
                            selectedItem == null
                                ? FontWeight.w400
                                : FontWeight.w600,
                        color:
                            selectedItem == null
                                ? AppColors.grey700
                                : AppColors.black,
                        fontSize: fontSize??18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            );
          },
          selectedItem: selectedItem,
          compareFn: (item1, item2) => item1.value == item2.value,
          itemAsString: itemAsString ?? (item) => item.value,
          items: items,
          validator: validator,
          onChanged: onChanged,
          popupProps: PopupProps.modalBottomSheet(
            title: Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 6),
    child: Center(
      child: Container(
        width: 120,
        height: 4,
        decoration: BoxDecoration(
          color: AppColors.grey300,
          borderRadius: Styles.borderRadiusCircular08,
        ),
      ),
    ),
  ),
            showSearchBox: true,
            isFilterOnline: true,
            showSelectedItems: true,
            searchFieldProps: TextFieldProps(
              style: const TextStyle(fontFamily: 'InstrumentSans', fontSize: 14),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: Styles.edgeInsetsAll12,
                prefixIconColor: AppColors.buttonTextColor,
                hintText: label ?? 'Select',
                fillColor: AppColors.white,
                filled: true,
                hintStyle: TextStyle(
                  fontFamily: 'InstrumentSans',
                  fontSize: fontSize ?? 14,
                  fontWeight: hintTextFontWeight ?? FontWeight.w400,
                  color: hintTextColor ?? AppColors.grey700,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular50,
                  borderSide: BorderSide(color: AppColors.grey500!, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular40,
                  borderSide: BorderSide(
                    color: AppColors.buttonTextColor,
                    width: 1.5,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular40,
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular40,
                  borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
                ),
              ),
            ),
            modalBottomSheetProps: const ModalBottomSheetProps(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Styles.radiusCircular20,
                  topRight: Styles.radiusCircular20,
                ),
              ),
            ),
            emptyBuilder:
                (context, searchEntry) => Center(child: Text('No Items Found')),
            itemBuilder:
                itemBuilder ??
                (context, item, isSelected) {
                  return Container(
                    padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyH04,
                    margin: Styles.edgeInsetsAll04 + Styles.edgeInsetsOnlyW10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: AppColors.grey),
                    ),
                    child: Text(
                      item.value,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontSize: fontSize ?? 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
          ),
        ),
        if (title != '') Styles.gap10,
      ],
    );
  }
}
