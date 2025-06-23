import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/google_map_view.dart';
import 'package:flutter/material.dart';

class VetNearMePage extends StatefulWidget {
  @override
  createState() => _VetNearMePage();
  static const routeName = '/VetNearMePage';

  const VetNearMePage({super.key});

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const VetNearMePage(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

class _VetNearMePage extends State<VetNearMePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    Future.delayed(Duration.zero, () async {
      BottomModels.clinicNearMeBottomSheet(context);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMapView(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.transparent),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Styles.gap30,
                  Row(
                    children: [
                      BackButtonWidget(),
                      Styles.gap8,
                      Expanded(
                        child: Text(
                          AppText.vetNearMe,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Styles.gap20,
                  
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          backgroundColor: AppColors.stepperColor,
                          name: Text(
                            "Clincs",
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Styles.gap15,
                      Expanded(
                        child: AppButton(
                          borderColor: AppColors.stepperColor,
                          backgroundColor: AppColors.white,
                          name: Text(
                            "Stores",
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.text,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Styles.gap50,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
