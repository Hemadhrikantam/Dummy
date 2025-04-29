import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/constent/image_resources.dart';
import '../../../../core/constent/styles.dart';
import '../../../../core/widgets/app_assets_image.dart';
import '../../../../core/widgets/app_custom_listview_builder.dart';
import '../../../../core/widgets/app_custom_text_field.dart';
import '../../../../core/widgets/app_icon.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> messages = [];
  final ScrollController _scrollController = ScrollController();
  bool isClicked = false;

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
            child: AppCustomListViewBuilder(
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
        if (isClicked)
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: BuildMessageInput(
              callback: (message) {
                _sendMessage(message);
              },
            ),
          )
        else
          AIWidget(
            callback: () {
              setState(() {
                isClicked = true;
              });
            },
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
          ).copyWith(left: isUser ? 50 : 0, right: isUser ? 0 : 50),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: Styles.borderRadiusCircular10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: context.textTheme.titleLarge?.copyWith(
                  color: AppColors.stepperColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Styles.gap50,
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
