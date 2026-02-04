import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_photo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MediaTab extends StatefulWidget {
  const MediaTab({super.key});

  @override
  State<MediaTab> createState() => _MediaTabState();
}

class _MediaTabState extends State<MediaTab> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 0), () {
      context.read<PetDairyBloc>().add(PetDairyEvent.initialization());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetDairyBloc, PetDairyState>(
      builder: (context, state) {
        LogUtility.info('media  ${state.medias}');
        if (state.medias.isEmpty) {
          return Padding(
            padding: Styles.edgeInsetsOnlyH00,
            child: EmptyListPage(
              imagePath: ImageResources.noMedia,
              subTitle: AppText.startCapturingMemo(
                context.read<DashboardBloc>().state.selectedPet?.name ?? "",
              ),
            ),
          );
        } else if (state.initStatus.loading) {
          LoadingWidget.circularProgressIndicatorCenter;
        }
        return Container(
          padding: Styles.edgeInsetsOnlyW08,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: Styles.borderRadiusCircular10,
          ),
          child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.medias.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,      // ✅ 2 images per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,    // ✅ square images
          ),
          itemBuilder: (context, index) {
            final m = state.medias[index];

            return GestureDetector(
              onTap: () {
                context.push(PetPhotoCardPage.route(media: m));
              },
              child: ClipRRect(
                borderRadius: Styles.borderRadiusCircular10,
                child: SizedBox.expand(
                  child: AppNetworkImage(
                    url: m.fileUrl,
                    boxFit: BoxFit.cover,
                  ),
                ),
              ),
            );})
        );
      },
    );
  }
}
