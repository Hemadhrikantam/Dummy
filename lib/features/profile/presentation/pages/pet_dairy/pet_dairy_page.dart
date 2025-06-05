import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/models/tab_model.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_tab_bar.dart';
import 'package:dummy/features/profile/presentation/widgets/bottom_action_button.dart';
import 'package:dummy/features/profile/presentation/widgets/pet_dairy/documents_tab.dart';
import 'package:dummy/features/profile/presentation/widgets/pet_dairy/media_tab.dart';
import 'package:dummy/features/profile/presentation/widgets/pet_dairy/time_line_tab.dart';
import 'package:flutter/material.dart';
import '../../widgets/pet_dairy/pet_dairy_header.dart';
import '../../widgets/pet_image_widget.dart';

class PetDairyPage extends StatefulWidget {
  const PetDairyPage({super.key});
  static const routeName = '/PetDairyPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PetDairyPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<PetDairyPage> createState() => _PetDairyPageState();
}

class _PetDairyPageState extends State<PetDairyPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.screenBackgroundColor),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: NestedScrollView(
          headerSliverBuilder:
              (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  backgroundColor: AppColors.scaffoldBackground,
                  automaticallyImplyLeading: false,
                  expandedHeight: 300,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Padding(
                      padding: Styles.edgeInsetsActivities,
                      child: Column(
                        children: [
                          Styles.gap50,
                          PetDairyHeader(),
                          Styles.gap25,
                          PetImageWidget(),
                          Styles.gap20,
                        ],
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10),
                    child: Padding(
                      padding: Styles.edgeInsetsOnlyW10,
                      child: Column(
                        children: [
                          Material(
                            color: AppColors.buttonBackground.withOpacity(.16),
                            child: CustomTabBar1(
                              tabController: _tabController,
                              tabs: [
                                TabModel(text: AppText.timeline),
                                TabModel(text: AppText.media),
                                TabModel(text: AppText.documents),
                              ],
                            ),
                          ),
                          Styles.gap10,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
          body: Padding(
            padding: Styles.edgeInsetsOnlyW10 + Styles.edgeInsetsOnlyB75,
            child: TabBarView(
              controller: _tabController,
              children: [TimeLineTab(), MediaTab(), DocumentsTab()],
            ),
          ),
        ),
        bottomSheet: BottomActionButton(
          child: AppButton(
            name: Text(AppText.add, style: Styles.buttonStyle),
            onPressed: () {
              if (_tabController.index == 1) {
                BottomModels.addPetMediaBottomSheet(context);
              } else {
                BottomModels.addPetDocumentsBottomSheet(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
