import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: AppColors.white),
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColorLight,
    scaffoldBackgroundColor: AppColors.white,
    disabledColor: AppColors.grey200,
    primaryIconTheme: const IconThemeData(color: AppColors.primaryColor),
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        // overlayColor: WidgetStateProperty.all(AppColors.primaryColor),
        overlayColor: WidgetStateProperty.all(AppColors.transparent),
        padding: WidgetStateProperty.all(Styles.edgeInsetsOnlyW25),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: AppColors.white),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        side: WidgetStateProperty.all(
          const BorderSide(color: AppColors.primaryColor),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        //  overlayColor: WidgetStateProperty.all(AppColors.primaryColor.withOpacity(0.3)),
        overlayColor: WidgetStateProperty.all(AppColors.transparent),
        padding: WidgetStateProperty.all(Styles.edgeInsetsAll10),
        elevation: WidgetStateProperty.all(2),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: Styles.borderRadiusCircular10,
            side: const BorderSide(color: AppColors.grey),
          ),
        ),
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: Colors.red,
      outline: AppColors.texFromHintText,
      surfaceTint: AppColors.white,
      surface: AppColors.lightBaseColor,
    ),
    cardTheme: CardTheme(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: Styles.borderRadiusCircular10,
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: 'SFProDisplay',
      ),
      titleMedium: TextStyle(
        fontSize: 18.5,
        fontWeight: FontWeight.bold,
        color: AppColors.buttonTextColor,
        fontFamily: 'SFProDisplay',
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.buttonTextColor,
        fontFamily: 'SFProDisplay',
      ),
      labelMedium: TextStyle(
        color: AppColors.buttonTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'SFProDisplay',
      ),
      labelLarge: TextStyle(
        color: AppColors.buttonTextColor,
        fontWeight: FontWeight.w700,
        fontSize: 14,
        fontFamily: 'SFProDisplay',
      ),
      labelSmall: TextStyle(
        color: AppColors.buttonTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'SFProDisplay',
      ),
      headlineSmall: TextStyle(
        color: AppColors.buttonTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'SFProDisplay',
      ),

      //
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: AppColors.buttonTextColor,
        fontFamily: 'SFProDisplay',
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.grey500,
      enabledBorder: Styles.border,
      focusedBorder: Styles.border,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: AppColors.white),
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColorLight,
    scaffoldBackgroundColor: AppColors.white,
    disabledColor: AppColors.grey400,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(AppColors.transparent),
        padding: WidgetStateProperty.all(Styles.edgeInsetsOnlyW25),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        textStyle: WidgetStateProperty.all(
          const TextStyle(color: AppColors.white),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        side: WidgetStateProperty.all(
          const BorderSide(color: AppColors.primaryColor),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(AppColors.transparent),
        padding: WidgetStateProperty.all(Styles.edgeInsetsAll10),
        elevation: WidgetStateProperty.all(2),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: Styles.borderRadiusCircular10,
            side: const BorderSide(color: AppColors.grey),
          ),
        ),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: Colors.red,
      outline: AppColors.texFromHintText,
      surfaceTint: AppColors.white,
      surface: AppColors.lightBaseColor,
    ),
    cardTheme: CardTheme(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: Styles.borderRadiusCircular05,
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(
        fontSize: 18.5,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      labelSmall: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
      labelMedium: TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.grey500,
      enabledBorder: Styles.border,
      focusedBorder: Styles.border,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  );
}

class AppTypography {
  // Large Title or Header
  static const TextStyle headerStyle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  // Subheader or Section Titles
  static const TextStyle subheaderStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  // Regular Text
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColors.primaryColor,
  );

  // Secondary Text or Greyed-out Info
  // static const TextStyle secondaryTextStyle = TextStyle(
  //   fontSize: 14.0,
  //   color: AppColors.greyTextColor,
  // );

  // // Buttons Text
  // static const TextStyle buttonTextStyle = TextStyle(
  //   fontSize: 16.0,
  //   fontWeight: FontWeight.bold,
  //   color: AppColors.whiteColor,
  // );

  // // Small Text or Footnotes
  // static const TextStyle smallTextStyle = TextStyle(
  //   fontSize: 12.0,
  //   color: AppColors.greyTextColor,
  // );
}
