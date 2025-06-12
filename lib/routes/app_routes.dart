import 'package:dummy/features/addoption/presentation/pages/all_adoption_details_page.dart';
import 'package:dummy/features/auth/presentation/pages/auth_page.dart';
import 'package:dummy/features/auth/presentation/pages/continue_with_phone.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_registration_page.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_welcome_page.dart';
import 'package:dummy/features/auth/presentation/pages/otp_verification.dart';
import 'package:dummy/features/dashboard/presentation/pages/adoption_dashboard_page.dart';
import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/health/presentation/pages/edit_medication_page.dart';
import 'package:dummy/features/health/presentation/pages/edit_vaccination_page.dart';
import 'package:dummy/features/ngo/presentation/pages/ngo_home_page.dart';
import 'package:dummy/features/profile/presentation/pages/ngo_profile_options_page.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_photo_page.dart';
import 'package:dummy/features/profile/presentation/pages/premium_subscription.dart';
import 'package:dummy/features/profile/presentation/pages/profile_page.dart';
import 'package:dummy/features/profile/presentation/pages/support/faq_page.dart';
import 'package:dummy/features/profile/presentation/pages/support/privacy_policy_page.dart';
import 'package:dummy/features/profile/presentation/pages/support/terms_and_condition_page.dart';
import 'package:dummy/features/profile/presentation/pages/vet_near_me_page.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy1_page.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy2_page.dart'
    show JoinDummy2Page;
import 'package:dummy/features/signup/presentation/pages/premium/dummy_timer_page.dart';
import 'package:dummy/features/signup/presentation/pages/start_your_pets_journey.dart';
import 'package:dummy/features/signup/presentation/pages/start_your_pets_journey2.dart';
import 'package:flutter/material.dart';

import '../features/profile/presentation/pages/pet_dairy/pet_fav_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/otp_page.dart';
import '../features/auth/presentation/pages/password_reset_successfull_page.dart';
import '../features/auth/presentation/pages/reset_password_page.dart';
import '../features/auth/presentation/pages/signup_page.dart';
import '../features/auth/presentation/pages/start_screen_page.dart';
import '../features/profile/presentation/pages/profile_options_page.dart';
import '../features/signup/presentation/pages/meet_your_pet_screen.dart';
import '../features/signup/presentation/pages/premium/premium_page1.dart';
import '../features/signup/presentation/pages/premium/remainder_page.dart';
import '../features/signup/presentation/pages/premium/start_30_days_free_page1.dart';
import '../features/signup/presentation/pages/welcome_to_dummy_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    MeetYourPetScreen.routeName: (_) => const MeetYourPetScreen(),
    StartYourPetsJourney.routeName: (_) => const StartYourPetsJourney(),
    StartYourPetsJourney2.routeName: (_) => const StartYourPetsJourney2(),
    JoinDummy1Page.routeName: (_) => const JoinDummy1Page(),
    JoinDummy2Page.routeName: (_) => const JoinDummy2Page(),
    WelcomeToDummyPage.routeName: (_) => const WelcomeToDummyPage(),
    //premium
    PremiumPage1.routeName: (_) => const PremiumPage1(),
    RemainderPage.routeName: (_) => const RemainderPage(),
    Start30DaysFreePage1.routeName: (_) => const Start30DaysFreePage1(),
    DummyTimerPage.routeName: (_) => const DummyTimerPage(),
    LoginPage.routeName: (_) => const LoginPage(),
    OTPPage.routeName: (_) => const OTPPage(),
    ResetPasswordPage.routeName: (_) => const ResetPasswordPage(),
    PasswordResetSuccessfullPage.routeName:
        (_) => const PasswordResetSuccessfullPage(),
    SignupPage.routeName: (_) => const SignupPage(),
    StartScreenPage.routeName: (_) => const StartScreenPage(),

    //dashboard
    DashboardPage.routeName: (_) => const DashboardPage(),

    //profile
    ProfileOptionsPage.routeName: (_) => const ProfileOptionsPage(),
    PetDairyPage.routeName: (_) => const PetDairyPage(),
    //
    AuthPage.routeName: (_) => const AuthPage(),
    ContinueWithPhone.routeName: (_) => const ContinueWithPhone(),
    OtpVerification.routeName: (_) => const OtpVerification(),
    NgoRegistrationPage.routeName: (_) => const NgoRegistrationPage(),
    NgoRegistrationPage2.routeName: (_) => const NgoRegistrationPage2(),
    NgoWelcomePage.routeName: (_) => const NgoWelcomePage(),
    NgoHomePage.routeName: (_) => const NgoHomePage(),
    PetPhotoCardPage.routeName: (_) => const PetPhotoCardPage(),
    PetFavPage.routeName: (_) => const PetFavPage(),
    ProfilePage.routeName: (_) => const ProfilePage(),
    VetNearMePage.routeName: (_) => const VetNearMePage(),
    PremiumSubscription.routeName: (_) => const PremiumSubscription(),
    AdoptionDashboardPage.routeName: (_) => const AdoptionDashboardPage(),
    AllAdoptionDetailsPage.routeName: (_) => const AllAdoptionDetailsPage(),
    NgoProfileOptionsPage.routeName: (_) => const NgoProfileOptionsPage(),
    FaqPage.routeName: (_) => const FaqPage(),
    PrivacyPolicyPage.routeName: (_) => const PrivacyPolicyPage(),
    TermsAndConditionPage.routeName: (_) => const TermsAndConditionPage(),
    EditMedicationPage.routeName: (_) => const EditMedicationPage(),
    EditVaccinationPage.routeName: (_) => const EditVaccinationPage(),
  };
}
