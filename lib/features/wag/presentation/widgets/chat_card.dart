import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/wag/presentation/widgets/chat_page.dart';
import 'package:dummy/features/wag/presentation/widgets/chatv3.dart';
import 'package:dummy/features/wag/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

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
    return CustomCard(
      padding: Styles.edgeInsetsZero,
      borderColor: AppColors.secondaryColor,
      backgroundColor: AppColors.white,
      child: Column(children: [Header(), Expanded(child: ChatPage1())]),
    );
  }
}
