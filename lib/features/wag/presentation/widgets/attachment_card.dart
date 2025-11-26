import 'dart:io';

import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dummy/core/utils/image_utility.dart';
import 'package:dummy/core/widgets/file_picker.dart';
import 'package:dummy/features/wag/presentation/bloc/wag_ai/wag_ai_bloc.dart';

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll10,
      child: BlocBuilder<WagAiBloc, WagAiState>(
        builder: (context, state) {
          return state.images.isEmpty
              ? Card(
                elevation: 0,
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: AppColors.grey, width: 1.5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconDetails(
                      iconName: 'Camera',
                      path: ImageResources.camera,
                      onTap: () async {
                        final picker = const ImageUtilityServiceImpl();
                        final file = await picker.pickImageFromCamera();
                        if (file != null) {
                          final bloc = context.read<WagAiBloc>();
                          final updated = [file.path];
                          bloc.add(WagAiEvent.images(updated));
                        }
                      },
                    ),
                    IconDetails(
                      iconName: 'Attachment',
                      path: ImageResources.attachment,
                      onTap: () async {
                        final files = await customFilePicker(
                          context,
                          multiFile: true,
                        );
                        if (files.isNotEmpty) {
                          final bloc = context.read<WagAiBloc>();
                          final updated = [...files];
                          bloc.add(WagAiEvent.images(updated));
                        }
                      },
                    ),
                  ],
                ),
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (final image in state.images)
                    GestureDetector(
                      onTap: () {
                        final bloc = context.read<WagAiBloc>();
                        final updated = [...state.images]..remove(image);
                        bloc.add(WagAiEvent.images(updated));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.file(
                              File(image),
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              padding: Styles.edgeInsetsAll06,
                              decoration: BoxDecoration(
                                color: AppColors.red,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                'x',
                                style: context.textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              );
        },
      ),
    );
  }
}

class IconDetails extends StatelessWidget {
  const IconDetails({
    super.key,
    required this.iconName,
    required this.path,
    this.onTap,
  });
  final String iconName;
  final String path;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: Styles.edgeInsetsAll10,
        child: Column(
          children: [
            AppSVGImage(path: path),
            Styles.gap6,
            Text(
              iconName,
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
