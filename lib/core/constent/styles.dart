import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class Styles {
  static const double otpFieldWidth = 55.0;
  static const double otpFieldHeight = 60.0;

  static const Size textButtonSize = Size(double.infinity, 40);

  static const textFormConstrain = BoxConstraints(minHeight: 40, maxHeight: 40);
  static const textContentPadding = EdgeInsets.symmetric(
    vertical: 6,
    horizontal: 8,
  );
  static final buttonStyle = GoogleFonts.instrumentSans(
    color: AppColors.buttonTextColor,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );
  static const gap0 = Gap(0);

  static const gap2 = Gap(2);
  static const gap4 = Gap(4);
  static const gap6 = Gap(6);
  static const gap8 = Gap(8);
  static const gap10 = Gap(10);
  static const gap12 = Gap(12);
  static const gap15 = Gap(15);
  static const gap16 = Gap(16);
  static const gap20 = Gap(20);
  static const gap25 = Gap(25);
  static const gap28 = Gap(28);

  static const gap30 = Gap(30);
  static const gap32 = Gap(32);
  static const gap40 = Gap(40);
  static const gap50 = Gap(50);
  static const gap65 = Gap(65);
  static const gap80 = Gap(80);
  static const gap100 = Gap(100);
  static const gap120 = Gap(120);

  static const sliverGap0 = SliverGap(0);
  static const sliverGap2 = SliverGap(2);
  static const sliverGap4 = SliverGap(4);
  static const sliverGap6 = SliverGap(6);
  static const sliverGap8 = SliverGap(8);
  static const sliverGap10 = SliverGap(10);
  static const sliverGap15 = SliverGap(15);
  static const sliverGap20 = SliverGap(20);
  static const sliverGap30 = SliverGap(30);
  static const sliverGap100 = SliverGap(100);

  static const sizedBox = SizedBox();

  static const sizedBoxH02 = SizedBox(height: 2);
  static const sizedBoxW02 = SizedBox(width: 2);
  static const sizedBoxH04 = SizedBox(height: 4);
  static const sizedBoxH06 = SizedBox(height: 6);
  static const sizedBoxW06 = SizedBox(width: 6);
  static const sizedBoxW04 = SizedBox(width: 4);
  static const sizedBoxH08 = SizedBox(height: 8);
  static const sizedBoxW08 = SizedBox(width: 8);
  static const sizedBoxH10 = SizedBox(height: 10);
  static const sizedBoxW10 = SizedBox(width: 10);
  static const sizedBoxH15 = SizedBox(height: 15);
  static const sizedBoxW15 = SizedBox(width: 15);
  static const sizedBoxH20 = SizedBox(height: 20);
  static const sizedBoxH30 = SizedBox(height: 30);
  static const sizedBoxW30 = SizedBox(width: 30);
  static const sizedBoxW20 = SizedBox(width: 20);
  static const sizedBoxH100 = SizedBox(height: 100);
  static const sizedBoxW100 = SizedBox(width: 100);

  static const spacer = Spacer();
  static const divider = Divider(thickness: 0.5);
  static const dividerGrey = Divider(color: AppColors.grey);
  static const voterDividerGrey = Divider(color: AppColors.grey, height: 20);
  static const dividerHeight0 = Divider(color: AppColors.grey, height: 0);
  static const dividerTH2 = Divider(thickness: 2);
  static const teamsDividerGrey = Divider(color: AppColors.grey, height: 5);
  static const sliverdividerTH2 = SliverToBoxAdapter(
    child: Divider(thickness: 2),
  );

  static SizedBox sizeBoxH({required double height}) {
    return SizedBox(height: height);
  }

  static SizedBox sizeBoxW({required double width}) {
    return SizedBox(width: width);
  }

  //

  static const edgeInsetsZero = EdgeInsets.zero;
  static const edgeInsetsAll02 = EdgeInsets.all(02);
  static const edgeInsetsOnlyBottom12 = EdgeInsets.only(bottom: 12);
  static const edgeInsetsCard = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 14,
  );
  static const edgeInsetsActivities = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 4,
  );
  static const edgeInsetsProfile = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 15,
  );
  static const edgeInsetsAppBar = EdgeInsets.symmetric(
    vertical: 10,
    horizontal: 8,
  );
  static const chip = EdgeInsets.symmetric(horizontal: 10, vertical: 3);
  static const dashBoardCard = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 2,
  );
  static const edgeInsetsAll04 = EdgeInsets.all(04);
  static const edgeInsetsAll06 = EdgeInsets.all(06);
  static const edgeInsetsAll08 = EdgeInsets.all(08);
  static const edgeInsetsAll10 = EdgeInsets.all(10);
  static const edgeInsetsAll12 = EdgeInsets.all(12);
  static const edgeInsetsAll15 = EdgeInsets.all(15);
  static const edgeInsetsAll16 = EdgeInsets.all(16);
  static const edgeInsetsAll18 = EdgeInsets.all(18);
  static const edgeInsetsAll20 = EdgeInsets.all(20);
  static const edgeInsetsAll25 = EdgeInsets.all(25);
  static const edgeInsetsAll30 = EdgeInsets.all(30);
  static const edgeInsetsAll35 = EdgeInsets.all(35);
  static const edgeInsetsOnlyR10 = EdgeInsets.only(right: 10);
  static const edgeInsetsOnlyT20 = EdgeInsets.only(top: 20);
  static const edgeInsetsOnlyT90 = EdgeInsets.only(top: 90);
  static const edgeInsetsOnlyT10 = EdgeInsets.only(top: 10);
  static const edgeInsetsOnlyL10 = EdgeInsets.only(left: 10);
  static const edgeInsetsOnlyB85 = EdgeInsets.only(bottom: 85);
  static const edgeInsetsOnlyB75 = EdgeInsets.only(bottom: 75);

  // Padding Vertical
  static const edgeInsetsOnlyH00 = EdgeInsets.zero;
  static const edgeInsetsOnlyH02 = EdgeInsets.symmetric(vertical: 02);
  static const edgeInsetsOnlyH04 = EdgeInsets.symmetric(vertical: 04);
  static const edgeInsetsOnlyH06 = EdgeInsets.symmetric(vertical: 06);
  static const edgeInsetsOnlyH08 = EdgeInsets.symmetric(vertical: 08);
  static const edgeInsetsOnlyH10 = EdgeInsets.symmetric(vertical: 10);
  static const edgeInsetsOnlyH15 = EdgeInsets.symmetric(vertical: 15);
  static const edgeInsetsOnlyH20 = EdgeInsets.symmetric(vertical: 20);
  static const edgeInsetsOnlyH30 = EdgeInsets.symmetric(vertical: 30);

  // Padding Horizontal
  static const edgeInsetsOnlyW04 = EdgeInsets.symmetric(horizontal: 04);
  static const edgeInsetsOnlyW06 = EdgeInsets.symmetric(horizontal: 06);
  static const edgeInsetsOnlyW08 = EdgeInsets.symmetric(horizontal: 08);
  static const edgeInsetsOnlyW10 = EdgeInsets.symmetric(horizontal: 10);
  static const edgeInsetsOnlyW15 = EdgeInsets.symmetric(horizontal: 15);
  static const edgeInsetsOnlyW20 = EdgeInsets.symmetric(horizontal: 20);
  static const edgeInsetsOnlyW25 = EdgeInsets.symmetric(horizontal: 25);
  static const edgeInsetsOnlyW100 = EdgeInsets.symmetric(horizontal: 100);
  static const textFormIcon = EdgeInsets.only(top: 15, left: 15, right: 10);

  // Border Radius
  static final borderRadiusCircular00 = BorderRadius.circular(00);
  static final borderRadiusCircular02 = BorderRadius.circular(02);
  static final borderRadiusCircular04 = BorderRadius.circular(04);
  static final borderRadiusCircular05 = BorderRadius.circular(05);
  static final borderRadiusCircular08 = BorderRadius.circular(08);
  static final borderRadiusCircular10 = BorderRadius.circular(10);
  static final borderRadiusCircular12 = BorderRadius.circular(12);
  static final borderRadiusCircular15 = BorderRadius.circular(15);
  static final borderRadiusCircular20 = BorderRadius.circular(20);
  static final borderRadiusCircular25 = BorderRadius.circular(25);
  static final borderRadiusCircular40 = BorderRadius.circular(40);
  static final borderRadiusCircular50 = BorderRadius.circular(50);
  static final borderRadiusCircular200 = BorderRadius.circular(200);

  static const radiusCircular04 = Radius.circular(04);
  static const radiusCircular05 = Radius.circular(05);
  static const radiusCircular08 = Radius.circular(08);
  static const radiusCircular10 = Radius.circular(10);
  static const radiusCircular12 = Radius.circular(12);
  static const radiusCircular20 = Radius.circular(20);

  //
  static const visualCardBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  static const bottomDialog = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: radiusCircular20),
  );
  // Decoration Underline input border
  static const underlineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: AppColors.white),
  );

  static final inputBorderWithBorderRadius05 = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
    borderRadius: borderRadiusCircular05,
  );
  static final outlineInputBorderZero = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(color: Colors.grey.shade300),
  );
  static final expansionTileBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );
  static const outlineInputBorderNone = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  );
  static const outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  static const outlineInputBorderRadius5Dark = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(05)),
  );
  static const outlineInputBorderRadius5 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(05)),
  );
  static final outlineInputBorderRadius50 = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(50)),
    borderSide: BorderSide(color: Colors.grey.shade300),
  );
  static const outlineInputBorder4 = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.grey350),
  );

  static const outlineInputBorderRadius10 = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: AppColors.texFromBorderColor),
  );

  // static const outlineInputBorderRadius0 = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(0)),
  //   borderSide: BorderSide(color: AppColors.background),
  // );
  // static const outlineInputBorderFocus = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(4)),
  //   borderSide: BorderSide(color: AppColors.primaryColor),
  // );
  // static const outlineInputBorderFocusError = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(4)),
  //   borderSide: BorderSide(color: AppColors.alertButtonColor),
  // );
  // static const outlineInputBorderIncomeFocus = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(4)),
  //   borderSide: BorderSide(color: AppColors.primaryColor),
  // );
  // static const outlineInputBorderError = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(4)),
  //   borderSide: BorderSide(color: AppColors.alertButtonColor),
  // );
  // static const outlineInputBorderNoneZ5 = OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(5)),
  //   borderSide: BorderSide.none,
  // );

  static final statusBoxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 5,
      blurRadius: 6,
    ),
  ];

  static const edgeInsetsSV06 = EdgeInsets.symmetric(vertical: 6);
  static final cardBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: const BorderSide(color: AppColors.baseColor),
  );

  // static final cardBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
  //     );
  // side: BorderSide(color: AppColors.primaryColor.withOpacity(0.5)),
  static const linearGradient = LinearGradient(
    colors: [AppColors.primaryColor, AppColors.baseColor],
  );
  static final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColors.grey350, width: 1.5),
  );
  // static const edgeInsetsCircular04 = EdgeInsets.(04);
  // static const edgeInsetsCircular08 = EdgeInsets.Circular(08);
  // static const edgeInsetsCircular10 = EdgeInsets.Circular(10);
  // static const edgeInsetsCircular15 = EdgeInsets.Circular(15);
  // static const edgeInsetsCircular20 = EdgeInsets.Circular(20);
}
