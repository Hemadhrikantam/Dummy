import 'package:flutter/material.dart';

class OverviewAddButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const OverviewAddButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent, // Default background color
          padding: const EdgeInsets.fromLTRB(35, 10, 35, 10), // Default padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Default rounded corners
          ),
          elevation: 0, // Remove default elevation
        ),
        child: const Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
