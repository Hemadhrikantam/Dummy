import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/features/wag/presentation/bloc/wag_ai/wag_ai_bloc.dart';
import 'package:dummy/features/wag/presentation/widgets/attachment_card.dart';
import 'package:dummy/features/wag/presentation/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextForm extends StatefulWidget {
  const TextForm({
    super.key,
    required this.isLessing,
    required this.callback,
    required this.onChanged,
  });
  final void Function()? isLessing;
  final void Function(String) callback;
  final Function(String) onChanged;
  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  bool isAttached = false;
  final controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        isAttached ? AttachmentCard() : SizedBox.shrink(),
        BlocBuilder<WagAiBloc, WagAiState>(
          builder: (context, state) {
            return AppTextFormField(
              controller: controller,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              suffix: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (controller.text.isNotEmpty)
                    GestureDetector(
                      onTap:
                          state.usage?.promptsRemaining != 0
                              ? () {
                                widget.callback(controller.text);
                                controller.text = "";
                              }
                              : () {
                                FocusScope.of(context).unfocus();
                                AppAlert.showToast(
                                  message:
                                      "You have used all your prompts. Please try again later.",
                                );
                              },
                      child: AppAssestsImage(
                        path: ImageResources.send,
                        width: 35,
                        height: 35,
                        boxFit: BoxFit.contain,
                      ),
                    ),
                  Styles.gap6,
                  ImagesContainer(
                    onTap: widget.isLessing,
                    path: ImageResources.audio,
                    backgroundColor: AppColors.buttonColor,
                    iconColor: AppColors.stepperColor,
                    size: 18,
                    borderColor: AppColors.buttonColor,
                  ),
                  Styles.gap6,
                  ImagesContainer(
                    onTap: () {
                      if (isAttached) {
                        final bloc = context.read<WagAiBloc>();
                        bloc.add(WagAiEvent.images([]));
                      }
                      setState(() {
                        isAttached = !isAttached;
                      });
                    },
                    path:
                        isAttached
                            ? ImageResources.cross
                            : ImageResources.setting,
                    backgroundColor: AppColors.white,
                    iconColor: AppColors.stepperColor,
                    borderColor: AppColors.secondaryLight,
                    size: isAttached ? 10 : 3,
                  ),
                ],
              ),
              hintText: 'Enter here',
              onChanged: (value) {
                widget.onChanged(value);
              },
            );
          },
        ),
      ],
    );
  }
}
