// import 'package:flutter/material.dart';

// class OverviewAddButton extends StatelessWidget {
//   final VoidCallback? onPressed;

//   const OverviewAddButton({super.key, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Spacer(), // Takes up all available space
//         Padding(
//           padding: const EdgeInsets.only(right: 16.0), // Optional right padding
//           child: ElevatedButton(
//             onPressed: onPressed,
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.orangeAccent,
//               padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               elevation: 0,
//             ),
//             child: const Text(
//               'Add',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
