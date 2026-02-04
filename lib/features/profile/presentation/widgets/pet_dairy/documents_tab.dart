import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:dummy/features/profile/presentation/bloc/pet_dairy/pet_dairy_bloc.dart';
import 'package:dummy/features/profile/presentation/pages/pet_dairy/pet_document_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocumentsTab extends StatelessWidget {
  const DocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PetDairyBloc, PetDairyState>(
      builder: (context, state) {
        if (state.documents.isEmpty) {
          return Padding(
            padding: Styles.edgeInsetsOnlyH00,
            child: EmptyListPage(
              imagePath: ImageResources.noMedia,
              subTitle: AppText.startCapturingMemo(
                context.read<DashboardBloc>().state.selectedPet?.name ?? "",
              ),
            ),
          );
        }
        return ListView(
          padding: Styles.edgeInsetsOnlyH00,
          children: [
            CustomCard(
              borderColor: AppColors.white,
              child: AppCustomListViewBuilder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: state.documents.length,
                isExpand: false,
                shrinkWrap: true,
                separatorBuilder: (context, i) => Styles.gap15,
                itemBuilder: (context, i) {
                  final item = state.documents[i];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(PetDocumentPage.route(media: item));
                    },
                    child: Row(
                      children: [
                        AppNetworkImage(
                          url: item.fileUrl,
                          height: 40,
                          width: 40,
                        ),
                        Styles.gap10,
                        Expanded(
                          child: Text(
                            item.fileUrl.split('/').last,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.grey600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        GestureDetector(
                        onTap: () {
                          BottomModels.documentDeleteBottomSheet(
                            context,
                            item.id,
                          );
                        },
                          child: AppAssestsImage(
                            path: ImageResources.delete,
                            height: 27,
                            width: 27,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
