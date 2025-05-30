import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:dummy/features/signup/presentation/pages/pet_selection_page.dart';
import 'package:dummy/features/signup/presentation/pages/welcome_to_dummy_page.dart';
import 'package:dummy/features/signup/presentation/widgets/meet_your_parent.dart';
import 'package:dummy/features/signup/presentation/widgets/notification_permission.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_info.dart';
import 'package:dummy/features/signup/presentation/widgets/pet_selection.dart';
import 'package:dummy/features/signup/presentation/widgets/upload_pet_photo.dart';
import 'package:flutter/material.dart';

class MeetYourPetScreen extends StatefulWidget {
  const MeetYourPetScreen({super.key});
  static const routeName = '/MeetYourPetScreen';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const MeetYourPetScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<StatefulWidget> createState() => _MeetYourPetScreenState();
}

class _MeetYourPetScreenState extends State<MeetYourPetScreen> {
  int currentIndex = 0;
  void onNext() {
    if (currentIndex < screens.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  void onPrevious() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }else{
      Navigator.of(context).pop();
    }
  }

  List<Widget> screens = [];
  @override
  void initState() {
    super.initState();
    screens = [
      MeetYourParent(onNext: onNext),
      PetSelection(onNext: onNext),
      UploadPetPhoto(onNext: onNext),
      PetInfo(onNext: onNext),
      NotificationPermission(
        onNext: () {
          context.pushNamed(WelcomeToDummyPage.routeName);
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Styles.gap12,
          StepperWidget(onTap: onPrevious, currentScreenIndex: currentIndex),
          Styles.gap20,
          if (screens.isNotEmpty)
            Expanded(
              child: SingleChildScrollView(child: screens[currentIndex]),
            ),
        ],
      ),
    );
  }
}
