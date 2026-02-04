import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDialog {
  static Future<void> internetGlitchDialog(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
          ),

          child: SizedBox(
            height: 500,
            child: Padding(
              padding: Styles.edgeInsetsAll10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssestsImage(
                    path: ImageResources.profileDog,
                    height: 200,
                  ),

                  Styles.gap15,

                  Text(
                    "🐾 Oops! No Internet Connection",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),

                  Styles.gap15,

                  Text(
                    "Looks like we're having trouble reaching the cloud. "
                    "Your pet's data is safe — just waiting for the internet to catch up!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),

                  Styles.gap30,

                  SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      onPressed: () {
                        context.pop();
                      },
                      name:  Text("Retry", style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                      color: Color(0xff6f3201)
                    ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
