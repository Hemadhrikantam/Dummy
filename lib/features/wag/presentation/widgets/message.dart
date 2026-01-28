import 'dart:io';

import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Message {
  Message({
    required this.isUser,
    required this.message,
    required this.date,
    this.images = const [],
  });
  final bool isUser;
  final String message;
  final DateTime date;
  final List<String> images;
}

class Messages extends StatelessWidget {
  const Messages({
    required this.isUser,
    required this.message,
    this.date,
    this.images = const [],
    super.key,
  });
  final bool isUser;
  final String message;
  final String? date;
  final List<String> images;
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
            color:
                isUser ? Color(0xFFD29949).withOpacity(0.2) : Color(0xFFFFBC66),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isUser ? 20 : 0),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(isUser ? 0 : 20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...images.map(
                (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child:
                      e.contains("http")
                          ? Image.network(
                            e,
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          )
                          : Image.file(
                            File(e),
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                ),
              ),
              Text(
                message,
                style: GoogleFonts.almarai(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  height: 1.2,
  letterSpacing: 0,
  color: AppColors.text
),
textAlign: TextAlign.left,

                // style: context.textTheme.titleLarge?.copyWith(
                //   color: AppColors.text,
                //   fontSize: 16,
                //   fontWeight: FontWeight.w700,
                // ),
              ),
            ],
          ),
        ),
        if (date != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),

            child: Text(
              AppUtil.formatDateTimeFromString(date!),
              style: context.textTheme.bodySmall?.copyWith(
                fontSize: 10,
                color: AppColors.black.withOpacity(.5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}
