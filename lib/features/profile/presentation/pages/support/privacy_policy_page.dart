import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});
  static const routeName = '/PrivacyPolicyPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PrivacyPolicyPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  TextStyle get headingStyle =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  TextStyle get subheadingStyle =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  TextStyle get bodyStyle => TextStyle(fontSize: 14, height: 1.5);
  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.privacyPolicy,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      child: ListView(
        padding: Styles.edgeInsetsOnlyT20,
        children: [
          CustomCard(
            borderColor: AppColors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("04/05/2025", style: subheadingStyle),
                    SizedBox(height: 10),
                    Text(
                      'Doommi ("we", "our", "us") is committed to protecting your privacy. '
                      'This Privacy Policy explains how we collect, use, and protect your information '
                      'when you use our mobile application.',
                      style: bodyStyle,
                    ),
                    SizedBox(height: 20),

                    Text('1. Information We Collect', style: headingStyle),
                    SizedBox(height: 8),
                    Text('a. Personal Information', style: subheadingStyle),
                    Text(
                      'We may collect:\n'
                      '• Name\n'
                      '• Email address\n'
                      '• Phone number\n'
                      '• NGO affiliation (if applicable)',
                      style: bodyStyle,
                    ),
                    SizedBox(height: 8),
                    Text('b. Pet Information', style: subheadingStyle),
                    Text(
                      'To help you manage pet care, we collect:\n'
                      '• Pet name\n'
                      '• Pet type and breed\n'
                      '• Medical history and care logs (meals, walks, symptoms)',
                      style: bodyStyle,
                    ),
                    SizedBox(height: 8),
                    Text('c. Device & Usage Data', style: subheadingStyle),
                    Text(
                      'We may collect device information (model, OS version), log data, app interactions, and session duration to improve user experience.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('2. WAG AI Interactions', style: headingStyle),
                    Text(
                      'WAG AI uses your input (e.g., pet symptoms or care questions) to provide intelligent responses. '
                      'These inputs may be used anonymously to improve AI accuracy. We do not use this data for advertising.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('3. Adoption & NGO Use', style: headingStyle),
                    Text(
                      'NGOs listing pets may submit:\n'
                      '• Animal photos and descriptions\n'
                      '• Contact details (email/phone)\n'
                      'We do not control how third-party NGOs handle data once you contact them outside the app.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('4. Notifications', style: headingStyle),
                    Text(
                      'Doommi may send push notifications related to:\n'
                      '• Care reminders\n'
                      '• Symptom tracking\n'
                      '• Important pet activity logs\n'
                      'You may manage these at the device level. Notification settings within the app are not currently available.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('5. Data Usage & Sharing', style: headingStyle),
                    Text(
                      'We use your data to:\n'
                      '• Power core app features\n'
                      '• Personalize reminders and WAG AI answers\n'
                      '• Improve app performance\n\n'
                      'We do not sell or share your personal data with advertisers or third parties.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('6. Data Storage & Security', style: headingStyle),
                    Text(
                      'Your data is stored securely on cloud servers. '
                      'We follow industry best practices to protect your information from unauthorized access or misuse.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('7. Account Deletion', style: headingStyle),
                    Text(
                      'To delete your account and associated data, please email us at:\n📧 support@doommiapp.com',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('8. Children’s Privacy', style: headingStyle),
                    Text(
                      'Doommi is not intended for users under the age of 13. We do not knowingly collect data from children.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('9. Changes to This Policy', style: headingStyle),
                    Text(
                      'We may update this Privacy Policy. When we do, we’ll notify you in-app or via email.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('10. Contact Us', style: headingStyle),
                    Text(
                      'If you have questions about this policy, contact us at:\nsupport@doommiapp.com',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 30),
                  ],
                ),
              ],
            ),
          ),
          Styles.gap12,
        ],
      ),
    );
  }
}
