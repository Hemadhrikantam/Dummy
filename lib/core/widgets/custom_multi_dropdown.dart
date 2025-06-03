import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/drop_item.dart';
import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';

class CustomMultiDropdownSearch extends StatelessWidget {
  const CustomMultiDropdownSearch({
    super.key,
    required this.items,
    this.label,
    this.lableColor,
    this.errorText,
    this.selectedItems = const [],
    this.focusedBorder,
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
  final List<DropItem> selectedItems;
  final VoidCallback? onClear;
  final String title;
  final bool? isMandatory;
  final Widget Function(BuildContext, DropItem, bool)? itemBuilder;
  final Widget Function(BuildContext, String)? emptyBuilder;
  final Future<List<DropItem>> Function(String)? onFind;

  final List<DropItem> items;
  final void Function(List<DropItem>)? onChanged;
  final FormFieldValidator<List<DropItem>>? validator;
  final double? fontSize;
  final String Function(DropItem)? itemAsString;
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
        DropdownSearch<DropItem>.multiSelection(
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
              hintStyle: GoogleFonts.instrumentSans(
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
          dropdownBuilder: (context, selectedItems) {
            final text = selectedItems.map((e) => e.value).join(', ');
            return Text(
              text.isEmpty ? (label ?? 'Select') : text,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight:
                    selectedItems.isEmpty ? FontWeight.w400 : FontWeight.w600,
                color:
                    selectedItems.isEmpty ? AppColors.grey700 : AppColors.black,
                fontSize: fontSize,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            );
          },
          selectedItems: selectedItems,
          compareFn: (item1, item2) => item1.value == item2.value,
          itemAsString: itemAsString ?? (item) => item.value,
          items: items,
          validator: validator,
          onChanged: onChanged,
          popupProps: PopupPropsMultiSelection.modalBottomSheet(
            showSearchBox: true,
            isFilterOnline: true,
            showSelectedItems: true,
            selectionWidget: (context, item, isSelected) {
              return SizedBox();
            },
            searchFieldProps: TextFieldProps(
              style: GoogleFonts.instrumentSans(fontSize: 14),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: Styles.edgeInsetsAll12,
                prefixIconColor: AppColors.buttonTextColor,
                hintText: label ?? 'Select',
                fillColor: AppColors.white,
                filled: true,
                hintStyle: GoogleFonts.instrumentSans(
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
                emptyBuilder ??
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.value,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: fontSize ?? 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (isSelected)
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.stepperColor,
                              borderRadius: Styles.borderRadiusCircular05,
                            ),
                            padding: Styles.edgeInsetsAll02,
                            child: Icon(
                              Icons.done,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                      ],
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
