import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({super.key});
  static const routeName = '/TermsAndConditionPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const TermsAndConditionPage(),
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
      title: AppText.termsConditions,
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
                      'Welcome to Doommi! These Terms & Conditions ("Terms") govern your use of the Doommi mobile application ("App") operated by Doommi Technologies ("we," "us," or "our").\n\n'
                      'By using this app, you agree to be bound by these Terms. If you do not agree, please do not use the app.',
                      style: bodyStyle,
                    ),
                    SizedBox(height: 20),

                    Text('1. Eligibility', style: headingStyle),
                    Text(
                      'You must be at least 13 years old to use Doommi. By using the app, you confirm that you are of legal age to enter into these Terms.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('2. User Responsibilities', style: headingStyle),
                    Text(
                      'You agree to:\n'
                      '• Provide accurate information when registering\n'
                      '• Maintain the confidentiality of your account\n'
                      '• Use the app only for lawful purposes\n'
                      '• Not misuse features such as WAG AI, adoption listings, or NGO submissions',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('3. Pet Data & Logs', style: headingStyle),
                    Text(
                      'You are responsible for the accuracy of the pet-related information you log. Doommi is not liable for outcomes related to incorrect logs or skipped reminders.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('4. WAG AI Disclaimer', style: headingStyle),
                    Text(
                      'WAG AI provides informational responses based on your inputs. It is not a licensed veterinarian and must not be used as a substitute for professional medical advice. Always consult a qualified vet for pet health concerns.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('5. Adoption Listings', style: headingStyle),
                    Text(
                      'Doommi allows NGOs to post adoption-ready animals. We do not vet or control NGO contact information. All adoption-related communication happens outside the app and is solely your responsibility.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('6. Data Storage & Security', style: headingStyle),
                    Text(
                      'Your data is stored securely on cloud servers. We follow industry best practices to protect your information from unauthorized access or misuse.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('6. Intellectual Property', style: headingStyle),
                    Text(
                      'All content, branding, illustrations, logos, and code within the app are the property of Doommi Technologies. You may not copy, distribute, or reuse any content without permission.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('7. Push Notifications', style: headingStyle),
                    Text(
                      'Doommi may send automated notifications for care reminders, mood logs, or updates. You may disable them at the device level. Notification settings are not currently offered within the app.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('8. Account Termination', style: headingStyle),
                    Text(
                      'We reserve the right to suspend or delete accounts that:\n'
                      '• Violate these Terms\n'
                      '• Attempt to misuse or exploit app functionality\n'
                      '• Post inappropriate or harmful content',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('9. Limitation of Liability', style: headingStyle),
                    Text(
                      'Doommi is provided “as is” without warranties of any kind. We do not guarantee the accuracy or timeliness of logs, reminders, or AI-generated responses. '
                      'We are not responsible for any loss, injury, or damage resulting from your use of the app.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('10. Changes to Terms', style: headingStyle),
                    Text(
                      'We may update these Terms periodically. Continued use of the app means you accept any changes.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('11. Governing Law', style: headingStyle),
                    Text(
                      'These Terms are governed by the laws of [Your Jurisdiction, e.g., India]. Disputes arising out of these Terms will be subject to the exclusive jurisdiction of the courts in Bengaluru.',
                      style: bodyStyle,
                    ),

                    SizedBox(height: 20),
                    Text('12. Contact Us', style: headingStyle),
                    Text(
                      'If you have questions or concerns about these Terms, contact:\n📧 support@doommiapp.com',
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
