import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/wag/presentation/widgets/chat_text_form.dart';
import 'package:dummy/features/wag/presentation/widgets/empty_screen.dart';
import 'package:dummy/features/wag/presentation/widgets/lissening_ai.dart';
import 'package:dummy/features/wag/presentation/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dummy/features/wag/presentation/bloc/wag_ai/wag_ai_bloc.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController _scrollController = ScrollController();
  bool isLessing = false;

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(milliseconds: 400), () {
    //   _scrollToBottom();
    // });
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WagAiBloc, WagAiState>(
      listener: (context, state) {
        if (state.historyStatus == Status.success) {
          _scrollToBottom();
        }
        if (!state.showingUsageBottomSheet &&
            (((state.usage?.imagesRemaining ?? 1) <= 0) ||
                ((state.usage?.promptsRemaining ?? 1) <= 0))) {
          context.read<WagAiBloc>().add(
            WagAiEvent.showingUsageBottomSheet(true),
          );
          BottomModels.aiLimitReachedBottomSheet(context);
        }
      },
      builder: (context, state) {
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
                        : (state.responses.isEmpty &&
                            state.streamResponse.isEmpty &&
                            state.history.isEmpty)
                        ? EmptyScreen()
                        : SingleChildScrollView(
                          controller: _scrollController,
                          child: Column(
                            children: [
                              AppCustomListViewBuilder(
                                shrinkWrap: true,
                                isExpand: false,
                                reverse: true,
                                padding: Styles.edgeInsetsOnlyH00,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.history.length + 1,
                                itemBuilder: (context, index) {
                                  if (index == state.history.length) {
                                    if (state
                                            .historydetails
                                            ?.pagination
                                            .total ==
                                        state.history.length) {
                                      return SizedBox.shrink();
                                    }
                                    if (state.hasMoreHistory &&
                                        !state.historyStatus.loading) {
                                      Future.microtask(() {
                                        context.read<WagAiBloc>().add(
                                          const WagAiEvent.loadHistory(),
                                        );
                                      });
                                    }
                                    return LoadingWidget
                                        .circularProgressIndicatorCenter;
                                  }
                                  final message =
                                      state.history.reversed.toList()[index];
                                  return Messages(
                                    isUser: message.role == "user",
                                    message: message.content,
                                    images: message.imageUrls ?? [],
                                    date:
                                        message.createdAt
                                            .add(
                                              Duration(hours: 5, minutes: 30),
                                            )
                                            .toString(),
                                  );
                                },
                              ),
                              AppCustomListViewBuilder(
                                shrinkWrap: true,
                                isExpand: false,
                                reverse: true,
                                padding: Styles.edgeInsetsOnlyH00,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.responses.length,
                                itemBuilder: (context, index) {
                                  final message =
                                      state.responses.reversed.toList()[index];
                                  return Messages(
                                    isUser: message.isUser,
                                    message: message.message,
                                    images: message.images,
                                    date: message.date.toString(),
                                  );
                                },
                              ),
                              if (state.streamResponse.isNotEmpty)
                                Messages(
                                  isUser: false,
                                  message: state.streamResponse,
                                  date: DateTime.now().toString(),
                                ),
                              Container(
                                padding: Styles.edgeInsetsAll12,
                                child: Text(
                                  'Wag AI can make mistakes. Information is for guidance only and is not a substitute for professional veterinary advice.',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.grey500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
              ),
            ),
            !isLessing
                ? BlocConsumer<WagAiBloc, WagAiState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return TextForm(
                      // disable: state.usage?.promptsRemaining != 0,
                      callback: (message) {
                        _scrollToBottom();
                        if (state.isSSECOnnected) {
                          context.read<WagAiBloc>().add(WagAiEvent.chat());
                        }
                      },
                      onChanged: (value) {
                        context.read<WagAiBloc>().add(
                          WagAiEvent.message(value),
                        );
                      },
                      isLessing: () => setState(() => isLessing = true),
                    );
                  },
                )
                : SizedBox.shrink(),
          ],
        );
      },
    );
  }
}



// class AIWidget extends StatelessWidget {
//   const AIWidget({super.key, required this.callback});
//   final void Function() callback;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: Styles.edgeInsetsAll15,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           AppIcon(icon: Iconsax.link, color: AppColors.stepperColor),
//           Styles.gap20,
//           AppAssestsImage(
//             height: 49,
//             width: 49,
//             boxFit: BoxFit.contain,
//             path: ImageResources.ai2,
//           ),
//           Styles.gap20,
//           AppIcon(
//             onTap: callback,
//             size: 30,
//             icon: Iconsax.keyboard5,
//             color: AppColors.stepperColor,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BuildMessageInput extends StatefulWidget {
//   const BuildMessageInput({super.key, required this.callback});
//   final void Function(String) callback;

//   @override
//   State<BuildMessageInput> createState() => _BuildMessageInputState();
// }

// class _BuildMessageInputState extends State<BuildMessageInput> {
//   final TextEditingController _messageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: context.height * .07,
//       padding: Styles.edgeInsetsOnlyH00,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppAssestsImage(
//             height: 49,
//             width: 49,
//             boxFit: BoxFit.contain,
//             path: ImageResources.ai2,
//           ),
//           Styles.gap8,
//           Expanded(
//             child: AppTextFormField(
//               preffix: Icon(Iconsax.link, color: AppColors.stepperColor),
//               controller: _messageController,
//               hintText: 'Enter your queries',
//               onChanged: (value) {},
//             ),
//           ),
//           Styles.gap10,
//           GestureDetector(
//             onTap: () {
//               final message = _messageController.text;
//               if (message.isNotEmpty) {
//                 widget.callback(message);
//                 _messageController.clear();
//               }
//             },
//             child: AppAssestsImage(
//               height: 49,
//               width: 49,
//               boxFit: BoxFit.contain,
//               path: ImageResources.sendIcon,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

