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

  static String convertToYYYYMMDD2(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      final outputFormat = DateFormat('yyyy-MM-dd');
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

  static String formatTimeAndAgoFromString(String dateString) {
    try {
      final dt = DateTime.parse(dateString).toLocal();
      final now = DateTime.now();
      final diff = now.difference(dt);
      final timePart = DateFormat('hh:mm a').format(dt);
      String agoPart;

      if (diff.inMinutes < 1) {
        agoPart = 'just now';
      } else if (diff.inMinutes < 60) {
        agoPart = timePart;
      } else if (diff.inHours < 24) {
        agoPart = timePart;
      } else if (diff.inDays < 7) {
        final d = diff.inDays;
        agoPart = '$d day${d == 1 ? '' : 's'} ago';
      } else if (diff.inDays < 30) {
        final w = (diff.inDays / 7).floor();
        agoPart = '$w week${w == 1 ? '' : 's'} ago';
      } else {
        final mo = (diff.inDays / 30).floor();
        agoPart = '$mo month${mo == 1 ? '' : 's'} ago';
      }

      return '$agoPart';
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

  static void launchApp(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      debugPrint("Could not launch $url");
    }
  }

  static int calculateTotalDosage({
    required DateTime startDate,
    required DateTime endDate,
    required int dosagePerTime,
    required bool morningEnabled,
    required bool afternoonEnabled,
    required bool nightEnabled,
    required String frequency,
  }) {
    /// Times per day
    int timesPerDay = 0;
    if (morningEnabled) timesPerDay++;
    if (afternoonEnabled) timesPerDay++;
    if (nightEnabled) timesPerDay++;

    if (timesPerDay == 0) return 0;

    /// Inclusive total days
    final int totalDays = endDate.difference(startDate).inDays + 1;

    /// Frequency occurrences
    int occurrences;

    switch (frequency) {
      case 'Daily':
        occurrences = totalDays;
        break;

      case 'Weekly':
        occurrences = (totalDays / 7).ceil();
        break;

      case 'Biweekly':
        occurrences = (totalDays / 14).ceil();
        break;

      case 'Monthly':
        occurrences =
            ((endDate.year - startDate.year) * 12 +
                endDate.month -
                startDate.month +
                1);
        break;

      case 'Quarterly':
        occurrences =
            (((endDate.year - startDate.year) * 12 +
                        endDate.month -
                        startDate.month +
                        1) /
                    3)
                .ceil();
        break;

      case 'Yearly':
        occurrences = endDate.year - startDate.year + 1;
        break;

      default:
        occurrences = totalDays;
    }

    return dosagePerTime * timesPerDay * occurrences;
  }
}
