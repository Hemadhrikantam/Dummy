import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/features/health/presentation/widgets/medications/date_card.dart';
import 'package:flutter/material.dart';

class DateList extends StatelessWidget {
  const DateList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomListViewBuilder(
      itemCount: 10,
      isExpand: false,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, i) => Styles.gap10,
      itemBuilder: (BuildContext context, int i) {
        return DateCard();
      },
    );
  }
}
