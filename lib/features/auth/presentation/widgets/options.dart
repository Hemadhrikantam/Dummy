import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    super.key,
    required this.label,
    required this.onTap,
    this.selected = false,
  });
  final bool selected;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: Styles.edgeInsetsAll12,
        margin: Styles.edgeInsetsOnlyH08,
        decoration: BoxDecoration(
          borderRadius: Styles.borderRadiusCircular08,
          color: Colors.white,
          border: Border.all(
            color: selected ? Color(0xFFA75A1D) : Colors.transparent,
            width: 2,
          ),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: context.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class Options extends StatefulWidget {
  const Options({super.key, required this.labels});
  final List<String> labels;
  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  String selected = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.labels.map((e) {
          return OptionsCard(
            label: e,
            selected: selected == e,
            onTap: () {
              setState(() {
                selected = e;
              });
            },
          );
        }),
      ],
    );
  }
}
