import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_photo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/image_resources.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/base_screen.dart';

class PetFavPage extends StatelessWidget {
  const PetFavPage({super.key});
  static const routeName = '/PetFavPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetFavPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.favourites,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      child: BlocBuilder<PetDairyBloc, PetDairyState>(
        builder: (context, state) {
          if (state.favoriteMedias.isEmpty) {
            return Padding(
              padding: Styles.edgeInsetsOnlyH00,
              child: EmptyListPage(
                imagePath: ImageResources.noMedia,
                subTitle: AppText.startAddingFavoritingMemo(
                  context.read<DashboardBloc>().state.selectedPet?.name ??
                      "",
                ),
              ),
            );
          }
          return Padding(
            padding: Styles.edgeInsetsOnlyW10,
            child: Container(
              // padding: Styles.edgeInsetsOnlyW10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Styles.borderRadiusCircular10,
              ),
              child: GridView.builder(
      shrinkWrap: true,
      padding: Styles.edgeInsetsAll15,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.favoriteMedias.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,          
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,        
      ),
      itemBuilder: (context, index) {
        final m = state.favoriteMedias[index];

        return GestureDetector(
          onTap: () {
            context.push(PetPhotoCardPage.route(media: m));
          },
          child: ClipRRect(
            borderRadius: Styles.borderRadiusCircular10,
            child: SizedBox.expand(
              child: AppNetworkImage(
                url: m.fileUrl,
                boxFit: BoxFit.cover, // ✅ fills tile, no gaps
              ),
            ),
          ),
        );})
            ),
          );
        },
      ),
    );
  }
}
