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

  //button text
  static String continueBtn = 'Continue';
  static String allow = 'Allow';
  static String maybeLater = 'MaybeLater';
  static String continueWithEmail = 'Continue With Email';
  static String continueWithGoogle = 'Continue With Google';
  static String alreadyHaveAccount = 'Already have an account? Log in here.';
  static String startUsingDummy = 'Start Using Dummy';
  static String tryFor = 'Try for \$0.00';

  //signup
  static String meetYourPet = 'Meet Your Pet!';
  static String petsName = "Pet's Name";
  static String startYourPetsJourney = "Start Your Pet’s Journey";
  static String welcomeToDummy =
      "Welcome to Dummy! We’re here to help you care for your cat or dog like never before.";
  static String welcomeToDummy2 =
      "Dummy was our beloved pet who inspired this app. Let’s keep his memory alive by caring for your pet with love and attention.";
  static String whatTypeOfPet = "What Type of Pet Do You Have?";
  static String dog = "Dog";
  static String cat = "Cat";
  static String petTypeInfo =
      "Dummy was a dog, but we love cats too—tell us about your pet!";
  static String uploadPetPhoto =
      'Upload a photo to make their profile special!';
  static String showOffYourPetSmile = 'Show off your pet’s smile!';
  static String upload = 'Upload';
  static String skip = 'Skip';
  static String tellUsYourPetType = 'Tell Us About Your [Pet Type]!';
  static String theMoreAboutPet =
      'The more we know about your pet, the better we can help!';
  static String age = 'Age';
  static String breed = 'Breed';
  static String dummyLovedHisPhoto =
      'Dummy loved his photo in his profile—add one for your pet!';
  static String stayOnTop = 'Stay on Top of Your Pet’s Care!';
  static String dummyCanSendYouRemainders =
      'Dummy can send you reminders for meals, walks, and health updates. Allow notifications to stay on track!';
  static String ownerLovedRemainder =
      'Dummy’s owner loved reminders—stay on track with notifications!';
  static String joinDummyToday = 'Join Dummy Today!';
  static String letsCreateYopurAccount =
      'Let’s create your account to start caring for your pet!';
  static String yourName = 'Your Name';
  static String emailAddress = 'Email Address';
  static String password = 'Password';
  static String confirmPassword = 'Confirm Password';
  static String welcomeToDummyPag = 'Welcome to Dummy, [User’s Name]!';
  static String yourAccountIsReady =
      'Your account is ready! Let’s start caring for [Pet’s Name] with Dummy.';
  static String unlockMoreWithDummy =
      'Unlock more with Dummy Premium: Advanced Health Insights, Symptom Checker, and more!';
  //premium

  static String unlockTheBest = 'Unlock the Best for Your Pet!';
  static String text1 = 'Unlimited media storage for all your pet’s memories.';
  static String text2 =
      'AI-powered health insights to catch risks early and keep your pet thriving.';
  static String text3 =
      '24/7 symptom checker with vet-approved advice for peace of mind.';
  static String text4 =
      'Understand your pet’s emotions with AI mood analysis and strengthen your bond.';
  static String text5 = 'Ability to 3 Family Members & 3 Pets.';
  static String planInfo = 'Only \$4.99/month (billed annually at \$49.99)';
  static String rating = '4.8 Star Ratings';
}

class ErrorResponse {
  static ErrorMessage socketException = ErrorMessage(
    message: AppText.checkYourInternertConnection,
  );
  static ErrorMessage somthingWentWrong = ErrorMessage(
    message: AppText.checkYourInternertConnection,
  );
  static ErrorMessage timeOutException = ErrorMessage(
    message: AppText.tryAgainLater,
  );
  static ErrorMessage formatException = ErrorMessage(
    message: AppText.badRequest,
  );
  static ErrorMessage dioError = ErrorMessage(message: AppText.invalidRequest);
  static ErrorMessage sessionOut = ErrorMessage(message: AppText.sessionOut);
  static ErrorMessage otherException = ErrorMessage(
    message: AppText.somethingWentWrong,
  );
}
