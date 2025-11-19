// import 'package:dummy/core/constant/app_colors.dart';
// import 'package:dummy/core/constant/styles.dart';
// import 'package:dummy/core/extention/app_theme_extention.dart';
// import 'package:dummy/core/extention/device_size_extention.dart';
// import 'package:dummy/core/widgets/app_assets_image.dart';
// import 'package:dummy/core/widgets/custom_card.dart';
// import 'package:dummy/features/addoption/domain/entities/adoption.dart';
// import 'package:dummy/features/ngo/domain/entities/listing.dart';
// import 'package:flutter/material.dart';

// import '../../../../core/constant/app_text.dart';
// import '../../../../core/widgets/app_custom_check_box.dart';
// import '../../../../core/widgets/app_custom_chip.dart';
// import '../../../../core/widgets/buttons/app_icon_button.dart';
// import 'adoption_card.dart';

// class AdoptionDetailsCard extends StatefulWidget {
//   const AdoptionDetailsCard({
//     super.key,
//     required this.isAllPet,
//     required this.adoption,
//   });
//   final bool isAllPet;
//   final Listing? adoption;
//   @override
//   State<AdoptionDetailsCard> createState() => _AdoptionDetailsCardState();
// }

// class _AdoptionDetailsCardState extends State<AdoptionDetailsCard> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return CustomCard(
//       borderColor: AppColors.transparent,
//       backgroundColor: AppColors.background,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               AppNetworkImage(
//                 height: context.height * .3,
//                 width: context.width,
//                 url: widget.adoption?.imageUrl ?? '',
//               ),
//               Positioned(
//                 bottom: 0,
//                 child: Container(
//                   padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyT20,
//                   height: context.height * .1,
//                   width: context.width * .89,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Styles.radiusCircular08,
//                       bottomRight: Styles.radiusCircular08,
//                     ),
//                     gradient: AppColors.blackAndWhite,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: context.height * .18,
//                 right: 10,
//                 child: CustomCard(
//                   padding: Styles.edgeInsetsAll02,
//                   borderRadius: Styles.borderRadiusCircular50,
//                   borderColor: AppColors.transparent,
//                   child: AppIconButton(
//                     padding: Styles.edgeInsetsOnlyH00,
//                     backgroundColor: AppColors.transparent,
//                     icon: Icons.keyboard_arrow_right_rounded,
//                     size: 25,
//                     iconColor: AppColors.black,
//                     borderColor: AppColors.transparent,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Styles.gap20,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 widget.adoption?.petName ?? '',
//                 style: context.textTheme.titleMedium?.copyWith(
//                   color: AppColors.stepperColor,
//                   fontWeight: FontWeight.w700,
//                   fontSize: 24,
//                 ),
//               ),
//               AppCustomChipWidget(
//                 backgroundColor: AppColors.backGroundGreen,
//                 textColor: isChecked ? AppColors.orenge : AppColors.greenText,
//                 subTitle: '',
//                 title: isChecked ? 'Unavailable' : 'Available',
//               ),
//             ],
//           ),
//           Styles.gap20,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextValueWidget(
//                 text: 'Breed & Age',
//                 value: 'Pomerian, ${widget.adoption?.age ?? ''} Y',
//               ),
//               // TextValueWidget(
//               //   text: 'Location',
//               //   value: widget.adoption?.location ?? '',
//               // ),
//             ],
//           ),
//           Styles.gap30,
//           TextValueWidget(
//             text: 'Description',
//             value: widget.adoption?.description ?? '',
//           ),
//           Styles.gap30,
//           TextValueWidget(text: 'Contact', value: widget.adoption?.phoneNumber ?? ''),
//           Styles.gap30,
//           TextValueWidget(text: 'Email', value: widget.adoption?.email ?? ''),
//           Styles.gap30,
//           if (!widget.isAllPet)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Styles.gap10,
//                 CustomCheckBox(
//                   isChecked: isChecked,
//                   fontSize: 22,
//                   label: AppText.markAsAdopted,
//                   onChanged: (value) {
//                     setState(() {
//                       isChecked = !isChecked;
//                     });
//                   },
//                 ),
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }
