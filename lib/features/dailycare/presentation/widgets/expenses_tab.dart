import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/widgets/day_selector_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpensesTab extends StatefulWidget {
  const ExpensesTab({super.key});

  @override
  State<ExpensesTab> createState() => _ExpensesTabState();
}

DateTime? _selectedDay;

class _ExpensesTabState extends State<ExpensesTab> {
  List<ExpenseItem> get _expenseItems {
    final selectedDate = _selectedDay ?? DateTime.now();
    return List.generate(
      5,
      (index) => ExpenseItem(
        amount: '\$20',
        date: selectedDate.add(Duration(days: index)),
        category: AppText.food,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final nextFiveDays = List.generate(
      6,
      (index) => now.add(Duration(days: index)),
    );

    return ListView(
      children: [
        DaySelector(
          days: nextFiveDays,
          initialDate: now,
          onDaySelected: (day) {
            setState(() {
              _selectedDay = day;
            });
          },
        ),
        Styles.gap15,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppButton(
              name: Text(
                AppText.add,
                style: context.textTheme.titleSmall?.copyWith(
                  color: AppColors.buttonTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              width: 90,
            ),
          ],
        ),
        Styles.gap15,
        CustomCard(
          child: AppCustomListViewBuilder(
            itemCount: _expenseItems.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            isExpand: false,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (context, index) {
              final expenseItem = _expenseItems[index];
              return CustomCard(
                child: Row(
                  children: [
                    AppAssestsImage(
                      path: ImageResources.expensesicon,
                      width: 40,
                      height: 40,
                    ),
                    Styles.gap15,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppText.amount,
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 12,
                              color: AppColors.grey500,
                            ),
                          ),
                          Styles.gap4,
                          Text(
                            expenseItem.amount,
                            style: context.textTheme.labelSmall?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          DateFormat('MM/dd/yyyy').format(expenseItem.date),
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          expenseItem.category,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.buttonTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ExpenseItem {
  final String amount;
  final DateTime date;
  final String category;

  ExpenseItem({
    required this.amount,
    required this.date,
    required this.category,
  });
}
