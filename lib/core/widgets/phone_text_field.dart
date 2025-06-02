import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/mandatory_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneTextField extends StatefulWidget {
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
  State<StatefulWidget> createState() => _PhoneTextField();
}

class _PhoneTextField extends State<PhoneTextField> {
  String initialCountryCode = 'IN';
  Key _phoneFieldKey = UniqueKey();

  void _onCountrySelected(Country country) {
    setState(() {
      initialCountryCode = country.code;
      _phoneFieldKey = UniqueKey(); // Force rebuild
    });
    LogUtility.warning(initialCountryCode);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.headerText != null)
          MandatoryFieldWidget(
            labelText: widget.headerText ?? '',
            required: widget.isMandatory,
          ),
        Styles.gap6,
        Stack(
          children: [
            IntlPhoneField(
              flagsButtonPadding: EdgeInsetsGeometry.only(left: 10),
              dropdownIcon: Icon(Icons.keyboard_arrow_down),
              key: _phoneFieldKey, // force rebuild when country changes
              controller: widget.controller,
              style: TextStyle(
                fontSize: 16,
                color: widget.textColor ?? AppColors.black.withOpacity(0.7),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                counterText: '',
                fillColor: widget.backgroundColor ?? Colors.white,
                hintText: widget.placeHolder,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                focusedBorder: Styles.outlineInputBorderRadius50.copyWith(
                  borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.black,
                    width: 1,
                  ),
                ),
                enabledBorder: Styles.outlineInputBorderRadius50.copyWith(
                  borderSide: BorderSide(
                    color:
                        widget.borderColor ?? AppColors.black.withOpacity(0.4),
                    width: 1,
                  ),
                ),
                errorBorder: Styles.outlineInputBorderRadius50,
                focusedErrorBorder: Styles.outlineInputBorderRadius50,
              ),
              dropdownTextStyle: const TextStyle(fontSize: 16,color: Color(0xff685879)),
              dropdownIconPosition: IconPosition.trailing,
              showCountryFlag: false,
              initialCountryCode: initialCountryCode,
              onChanged: widget.onChange,
              onCountryChanged: widget.onCountryChange,
            ),

            // Custom country picker trigger
            Positioned(
              left: 5,
              top: 0,
              child: GestureDetector(
                onTap: () {
                  _showCountryPicker(context, _onCountrySelected);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
        Styles.gap6,
      ],
    );
  }

  void _showCountryPicker(
    BuildContext context,
    Function(Country) onSelect, {
    Color? backgroundColor,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: backgroundColor ?? Colors.white,
      context: context,
      shape: Styles.bottomDialog,
      builder: (BuildContext context) {
        return CountrySelectDialog(onSelect: onSelect);
      },
    );
  }
}

class CountrySelectDialog extends StatefulWidget {
  const CountrySelectDialog({super.key, required this.onSelect});
  final void Function(Country) onSelect;
  @override
  State<CountrySelectDialog> createState() => _CountrySelectDialogState();
}

class _CountrySelectDialogState extends State<CountrySelectDialog> {
  TextEditingController searchController = TextEditingController();
  List<Country> filteredCountries = List.from(countries);

  void filterCountries(String query) {
    final filtered =
        countries.where((country) {
          final name = country.name.toLowerCase();
          final dialCode = country.dialCode.toLowerCase();
          return name.contains(query.toLowerCase()) ||
              dialCode.contains(query.toLowerCase());
        }).toList();
    setState(() => filteredCountries = filtered);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.4,
      maxChildSize: 1.0,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            const SizedBox(height: 8),
            const AppGraber(),
            const SizedBox(height: 16),

            // 🔍 Search Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: searchController,
                onChanged: filterCountries,
                decoration: InputDecoration(
                  hintText: "Search country",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Styles.gap10,
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: filteredCountries.length,
                itemBuilder: (context, index) {
                  final country = filteredCountries[index];
                  return ListTile(
                    title: Text('${country.name} (+${country.dialCode})'),
                    onTap: () {
                      widget.onSelect(country);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
