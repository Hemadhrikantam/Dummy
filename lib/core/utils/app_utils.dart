// ignore_for_file: inference_failure_on_function_return_type

import 'dart:io';

import 'package:dummy/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/formz/password.dart';
import 'toast_message.dart';

class AppUtil {
  static DateTime get currentDate => DateTime.now();

  static TimeOfDay get currentTime => TimeOfDay.now();

  static Future<String?> datePicker(
    BuildContext context, {
    DateTime? lastDate,
    DateTime? startDate,
    DateTime? selectedDate,
  }) async {
    final issueDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: startDate ?? currentDate,
      lastDate: lastDate ?? DateTime(currentDate.year + 50),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: TextTheme(
              bodyLarge: GoogleFonts.instrumentSans(
                fontSize: 14,
                color: AppColors.black,
                fontWeight: FontWeight.w700,
              ),
              titleMedium: GoogleFonts.instrumentSans(
                fontSize: 14,
                color: AppColors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primaryColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (issueDate != null) {
      return DateFormat('dd/MM/yyyy').format(issueDate);
    }
    return null;
  }

  static String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String convertToYYYYMMDD(String dateStr) {
    try {
      final inputFormat = DateFormat('dd/MM/yyyy');
      final outputFormat = DateFormat('yyyy-MM-dd');
      final date = inputFormat.parse(dateStr);
      return outputFormat.format(date);
    } catch (e) {
      print('Error converting date: $e');
      return '';
    }
  }

  static String formatDateToMMDDYYYY(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/"
        "${date.month.toString().padLeft(2, '0')}/"
        "${date.year}";
  }

  static String formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm a').format(dateTime);
  }

  // Format from String (if your date is a String)
  static String formatDateTimeFromString(String dateString) {
    try {
      final dateTime = DateTime.parse(dateString);
      return DateFormat('MM/dd/yyyy hh:mm a').format(dateTime);
    } catch (e) {
      return '';
    }
  }

  static String calculateAge(String dobString) {
    try {
      final parts = dobString.split('/');
      if (parts.length != 3) return '';

      final day = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final year = int.parse(parts[2]);

      final birthDate = DateTime(year, month, day);
      final today = DateTime.now();

      int years = today.year - birthDate.year;
      int months = today.month - birthDate.month;

      if (today.day < birthDate.day) {
        months--;
      }

      if (months < 0) {
        years--;
        months += 12;
      }

      return "$years year${years == 1 ? '' : 's'} ${months > 0 ? '$months month${months == 1 ? '' : 's'}' : ''}";
    } catch (e) {
      print(e);
      return '';
    }
  }

  static launchDialPad(String number) {
    try {
      if (Platform.isAndroid) {
        launchUrl(Uri.parse('tel:$number'));
      } else {
        launchUrl(Uri.parse('https://wa.me/$number'));
      }
    } catch (e) {
      // Show Make to user
    }
  }

  static launcWhatsappPad(String number) {
    try {
      if (Platform.isAndroid) {
        launchUrl(Uri.parse('whatsapp://send?phone=$number'));
      } else {
        launchUrl(Uri.parse('whatsapp://wa.me/$number'));
      }
    } catch (e) {
      // Show Make to user
    }
  }

  static Future<void> openWhatsApp() async {
    final url = Uri.parse('whatsapp://');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      AppAlert.showToast(message: 'WhatsApp is not installed.');
    }
  }

  static Future<void> openTearmsAndConditions() async {
    final url = Uri.parse('https://dpmatrix.in/terms-of-service.html');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.inAppBrowserView);
    } else {
      AppAlert.showToast(message: 'Could not open the URL');
    }
  }

  static Future<void> openPrivacyPolicy() async {
    final url = Uri.parse('https://dpmatrix.in/privacy-policy.html');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.inAppBrowserView);
    } else {
      AppAlert.showToast(message: 'Could not open the URL');
    }
  }

  static Future<void> shareViaGmail(String referralCode) async {
    final subject = Uri.encodeComponent('Join using my referral code');
    final body = Uri.encodeComponent(
      'Hey, use my referral code: $referralCode to join.',
    );
    final url = 'mailto:?subject=$subject&body=$body';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      AppAlert.showToast(message: 'Gmail is not available.');
    }
  }

  static String? buildPasswordError(Password password) {
    if (password.isPure || password.isValid) return null;
    switch (password.error) {
      case PasswordValidationError.tooShort:
        return 'Password must be at least 8 characters long';
      case PasswordValidationError.noUppercase:
        return 'Password must contain at least one uppercase letter';
      case PasswordValidationError.noLowercase:
        return 'Password must contain at least one lowercase letter';
      case PasswordValidationError.noSpecialChar:
        return 'Password must contain at least one special character';
      case PasswordValidationError.empty:
        return 'Password is required';
      default:
        return null;
    }
  }
  static  void launchApp(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url),);
    } else {
      debugPrint("Could not launch $url");
    }
  }



}
  

