import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xff0b0699);
  static const Color borderColor = Color(0xff0b0698);
  static const Color primaryColorLight = Color(0xffe1e1ef);
  static const Color stepperColor = Color(0xFFA7581A);
  static const Color backGround = Color(0xffe1e1f0);
  static const Color backGround1 = Color(0xfffafafa);
  static const Color backGroundBlue = Color(0xffdbdaed);
  static const Color brown = Color(0xffa87536);
  static const Color backGroundGreen = Color.fromARGB(255, 221, 238, 221);
  static const Color backGroundlightRed = Color(0xfff5eceb);
  static const Color textRed = Color(0xffde533e);
  static const Color primaryColorAspirant = Color(0xff0079B6);
  static const Color lighterBlue = Color(0xff9AC2EA);
  static const Color blue = Color(0xff237AD2);
  static const LinearGradient activeButtonColor = LinearGradient(
    colors: [Color(0xffFF6344), Color(0xffFFFFFF), Color(0xff178A0C)],
  );
  static const LinearGradient scaffoldBackgroundColor = LinearGradient(
    colors: [Color(0xffFF6344), Color(0xff7E8A40), Color(0xff00B13C)],
  );
  static LinearGradient transparentGradientColor = const LinearGradient(
    colors: [Color.fromARGB(255, 255, 255, 255)],
  );
  static const Color buttonBackground = Color(0xFFFFBA61);
  static const Color buttonTextColor = Color(0xFF6F3201);
  static const Color infoCardBackgroundColor = Color.fromARGB(98, 255, 186, 97);

  static const LinearGradient screenBackgroundColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFEACF),
      Color(0xFFFFD49E),
      Color(0xFFFFDDB0),
      Color(0xFFF9E7CF),
    ],
    stops: [0.0794, 0.2146, 0.7396, 0.9276],
  );

  static const LinearGradient startPetscreenBackgroundColor = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFEACF),
      Color(0xFFFFD49E),
      Color.fromARGB(255, 153, 150, 150),
      Color.fromARGB(255, 22, 18, 18),
    ],
    stops: [0.0794, 0.2146, 0.7396, 0.9276],
  );

  static const LinearGradient bluePinkGradient = LinearGradient(
    colors: [Color(0xff0B0698), Color(0xffFF1D74)],
  );
  static const LinearGradient blueGradient = LinearGradient(
    colors: [Color(0xff066597), Color(0xff051A8B)],
  );
  static const LinearGradient inActiveButtonColor = LinearGradient(
    colors: [Color(0xffbdbdbd), Color(0xffbdbdbd)],
  );

  static const Color greenText = Color(0xff00b03b);
  static const Color darkGreen = Color(0xff21692E);

  static const Color backgroundGreen = Color(0xffe1f2e3);
  static const Color redText = Color(0xffff6445);
  static const Color orenge = Color.fromARGB(255, 239, 141, 80);

  static const Color secondaryColor = Color(0xffDA9B28);
  static const Color secondaryLight = Color(0xffd3b000);
  static const Color baseColor = Color(0xFFB7B7B7);
  static const Color lightBaseColor = Color(0xFFFBFBFB);
  static const Color darkBaseColor = Color(0xFFC2C6C9);
  static const Color background = Color(0xFFf9f9f9);
  static const Color lightGrey = Color(0xFFe9e9ec);
  static const Color lighterGrey = Color(0xffefeef0);
  static const Color lighterGreen = Color(0xffC1DDBF);
  static const Color dark = Color(0xFF292D32);
  static const Color text = Color(0xFF131232);
  static const Color texFromHintText = Color(0xFF292D32);
  static const Color texFromHintText2 = Color(0xFFababab);

  static const Color texFromBorderColor = Color(0xFFf0f0f0);
  static const Color profileCardColor = Color(0xFFFFCF16);
  static const Color referCardColor = Color(0xFFFFFFAE);

  static const Color grey = Color(0xffe9e9e9);
  // static const Color scaffoldBackgroundColor = Color(0xffefefef);
  // static const Color tabUnselected = Color(0xffE6E6E640);
  // background: #E6E6E640;

  static const grey700 = Color(0xff616161);
  static const grey350 = Color(0xffd6d6d6);
  static const grey400 = Color(0xffB3ABBC);
  static final grey500 = Colors.grey[500];
  static const grey600 = Color(0xff757575);
  static final grey200 = Colors.grey[200];

  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);
  static const whiteShade = Color(0xfff7f5ff);
  static const iconBlack = Color(0xff5E5F60);
  static const purple = Color(0xffAC9AFE);
  static const lightBlue = Color(0xff83ACFF);
  static const lightRed = Color(0xffFFADB9);
  static const pink = Color(0xffEF9EFF);
  static const lightGreen = Color(0xffAAFEC9);
  static const transparent = Colors.transparent;
}
