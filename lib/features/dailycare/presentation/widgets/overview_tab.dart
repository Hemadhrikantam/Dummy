import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/animated_row_column.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dailycare/presentation/bloc/overview/overview_bloc.dart';
import 'package:dummy/features/dailycare/presentation/widgets/overview_card_widget.dart';
import 'package:dummy/features/health/presentation/widgets/empty_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverviewTab extends StatefulWidget {
  const OverviewTab({super.key});

  @override
  State<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  @override
  Widget build(BuildContext context) {
    if (false) {
      return Padding(
        padding: Styles.edgeInsetsOnlyH20,
        child: EmptyListPage(
          titleFontSize: 20,
          imagePath: ImageResources.tshirt,
          title:
              "We don’t have Luna’s daily care data yet. Start logging her meals to see a summary!",
        ),
      );
    } else {
      return Column(
        children: [
          Expanded(
            child: BlocBuilder<OverviewBloc, OverviewState>(
              builder: (context, state) {
                return CustomCard(
                  child: AnimatedColumn(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OverviewCard(
                        iconPath: ImageResources.mealsicon,
                        title: AppText.meals,
                        subtitle: state.overview?.meals ?? '',
                        onTap: () {},
                      ),
                      Styles.gap10,
                      OverviewCard(
                        iconPath: ImageResources.walksicon,
                        title: AppText.walks,
                        subtitle: state.overview?.walks ?? '',
                        onTap: () {},
                      ),
                      Styles.gap10,
                      OverviewCard(
                        iconPath: ImageResources.groomingicon,
                        title: AppText.grooming,
                        subtitle: state.overview?.grooming ?? '',
                        onTap: () {},
                      ),
                      Styles.gap10,
                      OverviewCard(
                        iconPath: ImageResources.dewormingicon,
                        title: AppText.deworming,
                        subtitle: state.overview?.deworming ?? '',
                        onTap: () {},
                      ),
                      Styles.gap10,
                      OverviewCard(
                        iconPath: ImageResources.expensesicon,
                        title: AppText.expenses,
                        subtitle: state.overview?.expenses ?? '',
                        onTap: () {},
                      ),
                    ],
                  ),

                  // AppCustomListViewBuilder(
                  //   physics: NeverScrollableScrollPhysics(),
                  //   isExpand: false,
                  //   shrinkWrap: true,
                  //   separatorBuilder: (context, i) => Styles.gap10,
                  //   itemCount: 6,
                  //   itemBuilder: (context, i) {
                  //     return OverviewCard(
                  //       iconPath: ImageResources.mealsicon,
                  //       title: AppText.meals,
                  //       subtitle: AppText.fiveloggedtoday,
                  //       onTap: () {},
                  //     );
                  //   },
                  // ),
                );
              },
            ),
          ),
        ],
      );
    }
  }
}
