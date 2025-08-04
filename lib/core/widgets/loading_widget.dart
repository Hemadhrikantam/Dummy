import 'package:dummy/core/constant/image_resources.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// import '../constant/app_colors.dart';

class LoadingWidget {
  static Widget get circularProgressIndicatorExpandRow {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [circularProgressIndicator],
      ),
    );
  }

  static Widget get circularProgressIndicatorWithRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [circularProgressIndicator],
    );
  }

  static Widget get circularProgressIndicator {
    return Lottie.asset(ImageResources.loading, width: 80, height: 80);
    // return const CircularProgressIndicator(color: AppColors.black);
  }

  static Widget get circularProgressIndicatorWithOutRowSmall {
    return SizedBox(width: 20, height: 20, child: circularProgressIndicator);
  }

  static Widget get circularProgressIndicatorCenter {
    return Center(child: circularProgressIndicator);
  }
}
