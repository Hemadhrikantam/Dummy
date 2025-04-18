import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_dairy_page.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy1_page.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy2_page.dart'
    show JoinDummy2Page;
import 'package:dummy/features/signup/presentation/pages/pet_info_page.dart'
    show PetInfoPage;
import 'package:dummy/features/signup/presentation/pages/pet_selection_page.dart';
import 'package:dummy/features/signup/presentation/pages/premium/dummy_timer_page.dart';
import 'package:dummy/features/signup/presentation/pages/start_your_pets_journey.dart';
import 'package:dummy/features/signup/presentation/pages/start_your_pets_journey2.dart';
import 'package:flutter/material.dart';

import '../features/profile/presentation/pages/profile_options_page.dart';
import '../features/signup/presentation/pages/meet_your_pet_screen.dart';
import '../features/signup/presentation/pages/notification_permission_page.dart';
import '../features/signup/presentation/pages/premium/premium_page1.dart';
import '../features/signup/presentation/pages/premium/remainder_page.dart';
import '../features/signup/presentation/pages/premium/start_30_days_free_page1.dart';
import '../features/signup/presentation/pages/premium/start_30_days_free_page2.dart';
import '../features/signup/presentation/pages/upload_pet_photo_page.dart';
import '../features/signup/presentation/pages/welcome_to_dummy_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    MeetYourPetScreen.routeName: (_) => const MeetYourPetScreen(),
    StartYourPetsJourney.routeName: (_) => const StartYourPetsJourney(),
    StartYourPetsJourney2.routeName: (_) => const StartYourPetsJourney2(),
    PetSelectionPage.routeName: (_) => const PetSelectionPage(),
    UploadPetPhotoPage.routeName: (_) => const UploadPetPhotoPage(),
    PetInfoPage.routeName: (_) => const PetInfoPage(),
    NotificationPermissionPage.routeName:
        (_) => const NotificationPermissionPage(),
    JoinDummy1Page.routeName: (_) => const JoinDummy1Page(),
    JoinDummy2Page.routeName: (_) => const JoinDummy2Page(),
    WelcomeToDummyPage.routeName: (_) => const WelcomeToDummyPage(),
    //premium
    PremiumPage1.routeName: (_) => const PremiumPage1(),
    RemainderPage.routeName: (_) => const RemainderPage(),
    Start30DaysFreePage1.routeName: (_) => const Start30DaysFreePage1(),
    Start30DaysFreePage2.routeName: (_) => const Start30DaysFreePage2(),
    DummyTimerPage.routeName: (_) => const DummyTimerPage(),
    

    //dashboard
    DashboardPage.routeName: (_) => const DashboardPage(),

    //profile
    ProfileOptionsPage.routeName: (_) => const ProfileOptionsPage(),
    PetDairyPage.routeName: (_) => const PetDairyPage(),
  };
}
