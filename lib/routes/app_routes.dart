import 'package:flutter/material.dart';

import '../features/signup/presentation/pages/meet_your_pet_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    MeetYourPetScreen.routeName: (_) => const MeetYourPetScreen(),
  };
}