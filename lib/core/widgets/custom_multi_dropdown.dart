import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/features/dailycare/presentation/widgets/save_cancel_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/drop_item.dart'; // Your DropItem class

class CustomMultiDropdownSearch extends StatefulWidget {
  const CustomMultiDropdownSearch({
    super.key,
    required this.items,
    this.label,
    this.errorText,
    this.selectedItems = const [],
    this.onChanged,
    this.title = '',
    this.isMandatory = false,
    this.fontSize,
    this.hintTextColor,
    this.hintTextFontWeight,
  });

  final String? label;
  final String? errorText;
  final List<DropItem> selectedItems;
  final void Function(List<DropItem>)? onChanged;
  final List<DropItem> items;
  final String title;
  final bool isMandatory;
  final double? fontSize;
  final Color? hintTextColor;
  final FontWeight? hintTextFontWeight;

  @override
  State<CustomMultiDropdownSearch> createState() =>
      _CustomMultiDropdownSearchState();
}

class _CustomMultiDropdownSearchState extends State<CustomMultiDropdownSearch> {
  List<DropItem> _selectedItems = [];
  List<DropItem> _filteredItems = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.selectedItems);
    _filteredItems = List.from(widget.items);
  }

  void _openMultiSelectBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        final items = widget.items;
        LogUtility.warning(items.length.toString());
        return _DropDownView(
          items: items,
          selectedItems: _selectedItems,
          onChanged: (selected) {
            setState(() {
              _selectedItems = selected;
            });
            widget.onChanged?.call(_selectedItems);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final fontSize = widget.fontSize ?? 14.0;
    final hintStyle = GoogleFonts.instrumentSans(
      fontSize: fontSize,
      fontWeight: widget.hintTextFontWeight ?? FontWeight.w400,
      color: widget.hintTextColor ?? Colors.grey[700],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0, top: 10),
            child: RichText(
              text: TextSpan(
                text: widget.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                children:
                    widget.isMandatory
                        ? [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ]
                        : [],
              ),
            ),
          ),
        InkWell(
          onTap: _openMultiSelectBottomSheet,
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade500),
              borderRadius: Styles.borderRadiusCircular50,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    _selectedItems.isEmpty
                        ? (widget.label ?? 'Select')
                        : _selectedItems.map((e) => e.value).join(', '),
                    style: hintStyle.copyWith(
                      fontWeight:
                          _selectedItems.isEmpty
                              ? FontWeight.w400
                              : FontWeight.w600,
                      color:
                          _selectedItems.isEmpty
                              ? hintStyle.color
                              : Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          ),
        ),
        if (widget.errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(widget.errorText!, style: TextStyle(color: Colors.red)),
          ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _DropDownView extends StatefulWidget {
  const _DropDownView({
    required this.selectedItems,
    this.onChanged,
    required this.items,
  });
  final List<DropItem> selectedItems;
  final void Function(List<DropItem>)? onChanged;
  final List<DropItem> items;
  @override
  State<_DropDownView> createState() => __DropDownViewState();
}

class __DropDownViewState extends State<_DropDownView> {
  final TextEditingController _searchController = TextEditingController();
  List<DropItem> _filteredItems = [];
  List<DropItem> _selectedItems = [];
  @override
  void initState() {
    super.initState();
    _filteredItems = List.from(widget.items);
    _selectedItems = List.from(widget.selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: Styles.edgeInsetsAll10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextFormField(
              controller: _searchController,
              hintText: 'Search',
              onChanged: (value) {
                setState(() {
                  _filteredItems =
                      widget.items
                          .where(
                            (item) => item.value.toLowerCase().contains(
                              value.toLowerCase(),
                            ),
                          )
                          .toList();
                });
              },
            ),
            Styles.gap10,
            Expanded(
              child: Theme(
                data: ThemeData(
                  highlightColor: AppColors.stepperColor
                ),
                child: Scrollbar(
                  thickness: 7,
                  radius: Styles.radiusCircular20,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _filteredItems.length,
                      itemBuilder: (_, index) {
                        final item = _filteredItems[index];
                        final isSelected = _selectedItems.contains(item);
                        return Container(
                          padding: Styles.edgeInsetsAll12,
                          margin: Styles.edgeInsetsAll04,
                          decoration: BoxDecoration(
                            borderRadius: Styles.borderRadiusCircular08,
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  _selectedItems.remove(item);
                                } else {
                                  _selectedItems.add(item);
                                }
                              });
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: Styles.edgeInsetsAll08,
                                    child: Text(
                                      item.value,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                                Styles.gap10,
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
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SaveCancelWidget(
              onPressed: () {
                setState(() {});
                if (widget.onChanged != null) {
                  widget.onChanged!(_selectedItems);
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
