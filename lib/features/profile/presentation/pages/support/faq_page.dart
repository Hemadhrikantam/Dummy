import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../widgets/support/support_options_widget.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});
  static const routeName = '/FaqPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const FaqPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  final List<Map<String, String>> faqList = const [
    {
      'question': 'What is Doommi?',
      'answer':
          'Doommi is a smart pet care app that helps you manage your pet’s health, daily care, medications, mood tracking, and explore adoption listings from NGOs.',
    },
    {
      'question': 'Who is Doommi for?',
      'answer':
          'Pet parents, animal lovers, and NGOs looking to list and manage adoptable pets.',
    },
    {
      'question': 'Can I manage more than one pet?',
      'answer':
          'Yes! Doommi supports multi-pet tracking, allowing you to switch or add pets easily.',
    },
    {
      'question': 'How do I delete my account?',
      'answer':
          'Please email [support@doommi.com] and our team will assist you.',
    },
    {
      'question': 'How do I log my pet’s meals or walks?',
      'answer':
          'Go to the Daily Care section, and tap on “Log Meal” or “Log Walk” to enter your pet’s activity.',
    },
    {
      'question': 'Can I track medications and vaccinations?',
      'answer':
          'Yes. Use the Medication section to add and monitor all your pet’s health treatments and vaccine dates.',
    },
    {
      'question': 'What is the Pet Diary used for?',
      'answer':
          'The Pet Diary allows you to store notes, special moments, and photos related to your pet.',
    },
    {
      'question': 'What is WAG AI?',
      'answer':
          'WAG AI is an intelligent assistant built into Doommi that helps you with common pet health questions and daily care advice.',
    },
    {
      'question': 'Is WAG AI a real vet?',
      'answer':
          'No. WAG AI is an AI assistant — not a replacement for veterinary care. Please consult a vet in case of emergencies.',
    },
    {
      'question': 'How can I talk to WAG AI?',
      'answer':
          'Tap on the WAG AI icon available in the Diary and Symptoms screens to start chatting with the assistant.',
    },
    {
      'question': 'How can I adopt a pet using Doommi?',
      'answer':
          'Head to the Adoption section to view pets listed by NGOs. Contact information is provided for each listing — just reach out directly.',
    },
    {
      'question': 'I work with an NGO. How can I list pets for adoption?',
      'answer':
          'Sign in through the NGO login, and you’ll be able to access the dashboard and add adoption listings.',
    },
    {
      'question': 'Will I receive reminders for pet care?',
      'answer':
          'Yes, you’ll automatically get helpful push notifications for logs like meals, medication, and moods.',
    },
    {
      'question': 'Can I turn notifications on or off?',
      'answer':
          'Notification settings are not currently available. Notifications are sent based on your activity within the app.',
    },
    {
      'question': 'How can I get support or report an issue?',
      'answer':
          'Please email us at [support@doommiapp.com] and we’ll be happy to help.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.faq,
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
                AppTextFormField(hintText: AppText.search),
                Styles.gap10,
                AppCustomListViewBuilder(
                  shrinkWrap: true,
                  isExpand: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: faqList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      child: CustomExpansionTile(
                        title: Text(
                          faqList[index]['question']!,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        children: [Text(faqList[index]['answer']!,
                        style: TextStyle(
                          color: AppColors.grey600,
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                        ),
                        )],
                      ),
                    );
                  },
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

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
  });
  final Widget title;
  final List<Widget> children;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool hide =true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Styles.edgeInsetsAll10,
      decoration: BoxDecoration(
        borderRadius: Styles.borderRadiusCircular08,
        border: Border.all(width: 2, color: AppColors.grey350),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: widget.title),
              GestureDetector(
                onTap: (){
                  setState(() {
                    hide=!hide;
                  });
                },
                child: Icon(hide?Icons.add : Icons.remove, color: AppColors.red)),
            ],
          ),
          if(!hide)
          ...widget.children,
        ],
      ),
    );
  }
}
