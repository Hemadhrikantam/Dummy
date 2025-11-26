import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/wag/presentation/bloc/wag_ai/wag_ai_bloc.dart';
import 'package:dummy/features/wag/presentation/widgets/chat_page.dart';
import 'package:dummy/features/wag/presentation/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({super.key});

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WagAiBloc, WagAiState>(
      builder: (context, state) {
        return state.initStatus.loading
            ? LoadingWidget.circularProgressIndicatorCenter
            : CustomCard(
              padding: Styles.edgeInsetsZero,
              borderColor: AppColors.secondaryColor,
              backgroundColor: AppColors.white,
              child: Column(children: [Header(), Expanded(child: ChatPage())]),
            );
      },
    );
  }
}
