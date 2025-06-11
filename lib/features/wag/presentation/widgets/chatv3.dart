import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/features/wag/presentation/widgets/attachment_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/constent/image_resources.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/widgets/app_assets_image.dart';
import '../../../../core/widgets/app_custom_listview_builder.dart';
import '../../../../core/widgets/app_custom_text_field.dart';
import '../../../../core/widgets/app_icon.dart';

class ChatPage1 extends StatefulWidget {
  const ChatPage1({super.key});

  @override
  State<ChatPage1> createState() => _ChatPage1State();
}

class _ChatPage1State extends State<ChatPage1> {
  final List<Message> messages = [];
  final ScrollController _scrollController = ScrollController();
  bool isClicked = false;
  bool isLessing = false;

  void _sendMessage(String message) {
    // Add the user message to the list
    setState(() {
      messages.insert(
        0,
        Message(isUser: true, message: message, date: DateTime.now()),
      );
    });

    Future.delayed(Duration(milliseconds: 100), () {
      _scrollController.jumpTo(_scrollController.position.minScrollExtent);
    });

    // Simulate the static reply with a delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        messages.insert(
          0,
          Message(
            isUser: false,
            message: "This is a static reply.",
            date: DateTime.now(),
          ),
        );
      });
      Future.delayed(Duration(milliseconds: 100), () {
        _scrollController.jumpTo(_scrollController.position.minScrollExtent);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: Styles.edgeInsetsOnlyH00,
            child:
                isLessing
                    ? LesseningAI(
                      callback: () => setState(() => isLessing = false),
                    )
                    : messages.isEmpty
                    ? EmptyScreen()
                    : AppCustomListViewBuilder(
                      shrinkWrap: true,
                      isExpand: false,
                      reverse: true,
                      controller: _scrollController,
                      padding: Styles.edgeInsetsOnlyH00,
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        // final isMe = true;
                        final message = messages[index];
                        return Messages(
                          isUser: message.isUser,
                          message: message.message,
                          date: message.date.toString(),
                        );
                      },
                    ),
          ),
        ),
        !isLessing
            ? TextForm(
              callback: (message) {
                _sendMessage(message);
              },
              isLessing: () => setState(() => isLessing = true),
            )
            : SizedBox.shrink(),
      ],
    );
  }
}

class LesseningAI extends StatelessWidget {
  const LesseningAI({super.key, this.callback});
  final void Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.transparent,
            child: AppAssestsImage(path: ImageResources.wagMic),
          ),
          Styles.gap6,
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
            textAlign: TextAlign.center,
            style: context.textTheme.bodySmall?.copyWith(
              fontSize: 13,
              color: AppColors.grey500,
            ),
          ),
          Styles.gap100,
          Styles.gap100,
          ImagesContainer(
            onTap: callback,
            path: ImageResources.cross,
            backgroundColor: AppColors.white,
            iconColor: AppColors.stepperColor,
            borderColor: AppColors.secondaryLight,
            size: 15,
          ),
        ],
      ),
    );
  }
}

class TextForm extends StatefulWidget {
  const TextForm({super.key, required this.isLessing, required this.callback});
  final void Function()? isLessing;
  final void Function(String) callback;
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
        AppTextFormField(
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
                  onTap: () {
                    widget.callback(controller.text);
                    controller.text = "";
                  },
                  child: AppAssestsImage(
                    path: ImageResources.send,
                    width: 30,
                    height: 30,
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
                  setState(() {
                    isAttached = !isAttached;
                  });
                },
                path:
                    isAttached ? ImageResources.cross : ImageResources.setting,
                backgroundColor: AppColors.white,
                iconColor: AppColors.stepperColor,
                borderColor: AppColors.secondaryLight,
                size: isAttached ? 10 : 3,
              ),
            ],
          ),
          hintText: 'Enter here',
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }
}

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({
    super.key,
    required this.path,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.size,
    this.onTap,
  });
  final String path;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final double size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 27,
        height: 27,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor, // border color
            width: 1,
          ),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child:
              path.contains('svg')
                  ? AppSVGImage(path: path, height: size, color: iconColor)
                  : AppAssestsImage(path: path, height: size),
        ),
      ),
    );
  }
}

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppAssestsImage(
              height: 30,
              width: 50,
              boxFit: BoxFit.contain,
              path: ImageResources.wag,
            ),
            Text(
              "Wag",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.stepperColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Styles.gap4,
        Text(
          'Hi, I’m wag your personal pet AI',
          style: context.textTheme.titleLarge?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Styles.gap8,
        Text(
          'How Can I help you today?',
          style: context.textTheme.titleLarge?.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.grey500,
          ),
        ),
      ],
    );
  }
}

class AIWidget extends StatelessWidget {
  const AIWidget({super.key, required this.callback});
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(icon: Iconsax.link, color: AppColors.stepperColor),
          Styles.gap20,
          AppAssestsImage(
            height: 49,
            width: 49,
            boxFit: BoxFit.contain,
            path: ImageResources.ai2,
          ),
          Styles.gap20,
          AppIcon(
            onTap: callback,
            size: 30,
            icon: Iconsax.keyboard5,
            color: AppColors.stepperColor,
          ),
        ],
      ),
    );
  }
}

class BuildMessageInput extends StatefulWidget {
  const BuildMessageInput({super.key, required this.callback});
  final void Function(String) callback;

  @override
  State<BuildMessageInput> createState() => _BuildMessageInputState();
}

class _BuildMessageInputState extends State<BuildMessageInput> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * .07,
      padding: Styles.edgeInsetsOnlyH00,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppAssestsImage(
            height: 49,
            width: 49,
            boxFit: BoxFit.contain,
            path: ImageResources.ai2,
          ),
          Styles.gap8,
          Expanded(
            child: AppTextFormField(
              preffix: Icon(Iconsax.link, color: AppColors.stepperColor),
              controller: _messageController,
              hintText: 'Enter your queries',
              onChanged: (value) {},
            ),
          ),
          Styles.gap10,
          GestureDetector(
            onTap: () {
              final message = _messageController.text;
              if (message.isNotEmpty) {
                widget.callback(message);
                _messageController.clear();
              }
            },
            child: AppAssestsImage(
              height: 49,
              width: 49,
              boxFit: BoxFit.contain,
              path: ImageResources.sendIcon,
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  Message({required this.isUser, required this.message, required this.date});
  final bool isUser;
  final String message;
  final DateTime date;
}

class Messages extends StatelessWidget {
  const Messages({
    required this.isUser,
    required this.message,
    this.date,
    super.key,
  });
  final bool isUser;
  final String message;
  final String? date;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ).copyWith(left: isUser ? 50 : 10, right: isUser ? 10 : 50),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: Styles.borderRadiusCircular10,
            border: Border.all(width: 1, color: AppColors.secondaryColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: context.textTheme.titleLarge?.copyWith(
                  color: AppColors.text,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Styles.gap4,
              Text(
                message,
                style: context.textTheme.titleLarge?.copyWith(
                  color: AppColors.grey400,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (date != null)
                Row(
                  children: [
                    Text(
                      isUser ? "User" : "Wag AI",
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        color: AppColors.black.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Styles.spacer,
                    Text(
                      AppUtil.formatDateTimeFromString(date!),
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 10,
                        color: AppColors.black.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
