import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class DocumentsTab extends StatelessWidget {
  const DocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCard(
          borderColor: AppColors.white,
          child: AppCustomListViewBuilder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 30,
            isExpand: false,
            shrinkWrap: true,
            separatorBuilder: (context, i) => Styles.gap15,
            itemBuilder: (context, i) {
              return Row(
                children: [
                  AppAssestsImage(
                    path: ImageResources.profileDog,
                    height: 40,
                    width: 40,
                  ),
                  Styles.gap10,
                  Expanded(
                    child: Text(
                      'Document.png',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.grey600
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AppAssestsImage(path: ImageResources.delete, height: 27,width: 27,)
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
