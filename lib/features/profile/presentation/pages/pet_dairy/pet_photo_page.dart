import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/services/share_service.dart';

import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/features/profile/domain/entities/media.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class PetPhotoCardPage extends StatelessWidget {
  const PetPhotoCardPage({super.key, required this.media});
  static const routeName = '/PetPhotoCardPage';
  final Media media;
  static Route<T> route<T>({required Media media}) {
    return MaterialPageRoute<T>(
      builder: (context) => PetPhotoCardPage(media: media),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
        child: Padding(
          padding: Styles.edgeInsetsAll20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Background image
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(media.media),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Gradient overlay (bottom)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black87],
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      media.media,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // Top buttons (tag and close)
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBA59),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.cake, size: 16, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "Birthday",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: Icon(Icons.close, color: Colors.black),
                    ),
                  ),
                ),

                // Vertical action buttons
                Positioned(
                  right: 8,
                  bottom: 100,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<PetDairyBloc>().add(
                            PetDairyEvent.updateMediaFavroute(
                              media.id,
                              !media.isFavourite,
                            ),
                          );
                          context.pop();
                        },
                        child:
                            media.isFavourite
                                ? Icon(
                                  Iconsax.heart5,
                                  color: AppColors.textRed,
                                  size: 30,
                                )
                                : SvgPicture.asset(
                                  ImageResources.heartWhite,
                                  width: 30,
                                ),
                      ),
                      Styles.gap20,
                      GestureDetector(
                        onTap: () {
                          ShareService.shareByUrl(media.media);
                          //BottomModels.shareBottomSheet(context, media);
                        },
                        child: SvgPicture.asset(
                          ImageResources.share,
                          width: 30,
                        ),
                      ),
                      Styles.gap20,
                      GestureDetector(
                        onTap: () {
                          BottomModels.addPetMediaBottomSheet(
                            context,
                            id: media.id,
                          );
                        },
                        child: SvgPicture.asset(
                          ImageResources.editWhite,
                          width: 30,
                        ),
                      ),
                      Styles.gap20,
                      GestureDetector(
                        onTap: () {
                          context.read<PetDairyBloc>().add(
                            PetDairyEvent.deleteMedia(media.id),
                          );
                          context.pop();
                        },
                        child: SvgPicture.asset(
                          ImageResources.deleteWhite,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
