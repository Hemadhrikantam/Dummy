import 'package:dummy/core/error/app_error.dart';

class AppText {
  static String versionText = 'Version 1.0.0';
  static String checkYourInternertConnection = 'Check Your  Internt Connection';
  static String tryAgainLater = 'Try Again Later';
  static String badRequest = 'Bad Request';
  static String invalidRequest = 'Invalid Reuest';
  static String invalidOtp = 'Invalid OTP';
  static String checkYourOtp = 'Check Your OTP';
  static String checkYourCredentail = 'Check Your Credentails';
  static String userNotExists = 'User Not Exists';
  static String sessionOut = 'Session Out';
  static String noItemsFound = 'No Items Found';

  static String serverDown = 'Server Down';
  static String somethingWentWrong = 'Something Went Wrong';


  static String comingSoon = 'Coming Soon...';
  static String search = 'Search...';
}


class ErrorResponse {
  static ErrorMessage socketException =
      ErrorMessage(message: AppText.checkYourInternertConnection);
  static ErrorMessage somthingWentWrong =
      ErrorMessage(message: AppText.checkYourInternertConnection);
  static ErrorMessage timeOutException =
      ErrorMessage(message: AppText.tryAgainLater);
  static ErrorMessage formatException =
      ErrorMessage(message: AppText.badRequest);
  static ErrorMessage dioError = ErrorMessage(message: AppText.invalidRequest);
  static ErrorMessage sessionOut = ErrorMessage(message: AppText.sessionOut);
  static ErrorMessage otherException =
      ErrorMessage(message: AppText.somethingWentWrong);
}