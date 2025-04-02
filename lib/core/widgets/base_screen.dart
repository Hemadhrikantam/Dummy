
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constent/app_colors.dart';
import 'buttons/app_icon_button.dart';
import 'custom_search_bar.dart';

class MaterialBaseScreen extends StatelessWidget {
  const MaterialBaseScreen({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        color: AppColors.backGround1,
        child: SafeArea(
          child: Padding(
            padding: Styles.edgeInsetsAll20,
            child: child,
          ),
        ),
      ),
    );
  }
}

class ScaffoldBaseScreen extends StatelessWidget {
  const ScaffoldBaseScreen({
    required this.title,
    required this.subTitle,
    required this.child,
    super.key,
  });
  final String title;
  final String? subTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 2,
          title: Padding(
            padding: Styles.edgeInsetsOnlyW08,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  subTitle ?? '',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          toolbarHeight: 50,
        ),
        body: Padding(
          padding: Styles.edgeInsetsAll20,
          child: child,
        ),
      ),
    );
  }
}

class ScaffoldBaseScreenWithTabBar extends StatelessWidget {
  const ScaffoldBaseScreenWithTabBar({
    required this.title,
    required this.child,
    super.key,
    this.bottom,
  });
  final String title;
  final Widget child;
  final PreferredSizeWidget? bottom;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          bottom: bottom,
        ),
        body: Padding(
          padding: Styles.edgeInsetsAll20,
          child: child,
        ),
      ),
    );
  }
}

class MaterialTitleBaseScreen extends StatelessWidget {
  const MaterialTitleBaseScreen({
    required this.child,
    required this.title,
    required this.subtTtle,
    super.key,
    this.padding,
    this.bottom,
    this.showBackIcon = true,
    this.onlyTitle = false,
    this.expandedHeight,
    this.onBack,
    this.sufficIcon,
    this.onChanged,
    this.filterOnTap,
    this.backgroundColor,
  });
  final Widget child;
  final String title;
  final String subtTtle;
  final bool showBackIcon;
  final bool onlyTitle;
  final EdgeInsetsGeometry? padding;
  final PreferredSizeWidget? bottom;
  final double? expandedHeight;
  final void Function()? onBack;
  final bool? sufficIcon;
  final void Function(String)? onChanged;
  final void Function()? filterOnTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        color: backgroundColor ?? AppColors.backGround,
        child: NestedScrollView(
          body: Padding(
            padding: padding ?? Styles.edgeInsetsAll10,
            child: child,
          ),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                leadingWidth: double.infinity,
                flexibleSpace: Container(
                    // decoration: const BoxDecoration(
                    //   gradient: AppColors.scaffoldBackgroundColor,
                    // ),
                    ),
                floating: true,
                pinned: true,
                snap: true,
                toolbarHeight: 70,
                expandedHeight: expandedHeight,
                leading: onlyTitle
                    ? CustomAppBarTitle(
                        suffixIcon: sufficIcon,
                        title: title,
                        showBackIcon: showBackIcon,
                        filterOnTap: filterOnTap,
                      )
                    : CustomAppBar(
                        title: title,
                        subTitle: subtTtle,
                        showBackIcon: showBackIcon,
                        onBack: onBack,
                      ),
                bottom: bottom ??
                    PreferredSize(
                      preferredSize: Size(
                        context.width,
                        context.height * .08,
                      ),
                      child: Padding(
                        padding: Styles.edgeInsetsOnlyW20 +
                            Styles.edgeInsetsAll10,
                        child: SearchButton(
                          hintText: AppText.search,
                          onChanged: onChanged,
                        ),
                      ),
                    ),
              ),
            ];
          },
        ),
      ),
    );
  }
}

class ScaffoldTitleBaseScreen extends StatelessWidget {
  const ScaffoldTitleBaseScreen({
    required this.child,
    required this.title,
    required this.subTitle,
    super.key,
    this.padding,
    this.bottom,
    this.showBackIcon = true,
    this.onlyTitle = false,
    this.expandedHeight,
    this.onBack,
    this.showImage,
    this.filterOnTap,
    this.onChanged,
    this.backgroundColor,
    this.suffixIcon,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.hideSearch,
  });
  final Widget child;
  final String title;
  final String subTitle;
  final bool showBackIcon;
  final EdgeInsetsGeometry? padding;
  // final Widget? bottom;
  final bool? hideSearch;
  final PreferredSizeWidget? bottom;
  final bool onlyTitle;
  final double? expandedHeight;
  final void Function()? onBack;
  final bool? showImage;
  final void Function()? filterOnTap;
  final void Function(String)? onChanged;
  final Color? backgroundColor;
  final bool? suffixIcon;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.backGround1,
        resizeToAvoidBottomInset: true,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppColors.white, size: 35),
          bottom: bottom ??
              PreferredSize(
                preferredSize: Size(
                  context.width,
                  context.height * .08,
                ),
                child: (hideSearch ?? false)
                    ? Styles.sizedBox
                    : Padding(
                        padding: Styles.edgeInsetsOnlyW20 +
                            Styles.edgeInsetsOnlyW20,
                        child: InkWell(
                          onTap: () {
                            AppAlert.showToast(message: AppText.comingSoon);
                          },
                          child: SearchButton(
                            hintText: AppText.search,
                            onChanged: onChanged,
                          ),
                        ),
                      ),
              ),
          automaticallyImplyLeading: false,
          leadingWidth: double.infinity,
          toolbarHeight: 70,
          leading: onlyTitle
              ? CustomAppBarTitle(
                  title: title,
                  suffixIcon: suffixIcon,
                  showBackIcon: showBackIcon,
                  filterOnTap: filterOnTap,
                )
              : CustomAppBar(
                  title: title,
                  subTitle: subTitle,
                  showBackIcon: showBackIcon,
                  onBack: onBack,
                  showImage: showImage,
                ),
        ),
        // bottomNavigationBar: bottom,
        body: Padding(
          padding: padding ?? Styles.edgeInsetsAll15,
          child: child,
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.title,
    required this.subTitle,
    super.key,
    this.showBackIcon = true,
    this.onBack,
    this.showImage,
  });
  final String title;
  final String subTitle;
  final bool showBackIcon;
  final bool? showImage;
  final void Function()? onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll08,
      child: Row(
        children: [
          Styles.gap10,
          if (showBackIcon && !(showImage ?? false))
            AppIconButton(
              backgroundColor: AppColors.transparent,
              icon: Iconsax.arrow_left,
              size: 25,
              iconColor: AppColors.black,
              borderColor: AppColors.transparent,
              onPressed: onBack ?? () => context.pop(),
            ),
          if (showImage ?? false)
            GestureDetector(
              onTap: () {
                // context.push(MorePage.route());
              },
              child: const CircleAvatar(
                radius: 24,
                child: Icon(
                  Iconsax.user,
                  color: AppColors.white,
                ),
              ),
            ),
          Styles.gap10,
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.grey600,
                            fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Styles.gap8,
                if (showImage ?? false)
                  AppIcon(
                    icon: Iconsax.notification,
                    onTap: () {
                      AppAlert.showToast(message: 'Coming Soon...');
                    },
                  ),
                Styles.gap6,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle(
      {required this.title,
      super.key,
      this.showBackIcon = true,
      this.suffixIcon,
      this.filterOnTap});
  final bool showBackIcon;
  final String title;
  final bool? suffixIcon;
  final void Function()? filterOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll08,
      child: Row(
        children: [
          if (showBackIcon)
            AppIconButton(
              backgroundColor: AppColors.transparent,
              icon: Iconsax.arrow_left,
              size: 25,
              iconColor: AppColors.black,
              borderColor: AppColors.transparent,
              onPressed: () => context.pop(),
            ),
          Styles.gap10,
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (suffixIcon ?? false)
            CustomCard(
              backgroundColor: AppColors.grey200,
              borderColor: AppColors.transparent,
              padding: Styles.edgeInsetsAll04,
              borderRadius: Styles.borderRadiusCircular08,
              child: AppIcon(
                onTap: () {
                  AppAlert.showToast(message: AppText.comingSoon);
                },
                color: AppColors.grey700,
                icon: Iconsax.filter,
                size: 20,
              ),
            ),
        ],
      ),
    );
  }
}




/*
class MaterialTitleBaseScreen extends StatelessWidget {
  const MaterialTitleBaseScreen({
    super.key,
    required this.child,
    required this.title,
    this.padding,
    this.bottom,
    this.showBackIcon = true,
    this.expandedHeight,
  });
  final Widget child;
  final String title;
  final bool showBackIcon;
  final EdgeInsetsGeometry? padding;
  final PreferredSizeWidget? bottom;
  final double? expandedHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        child: NestedScrollView(
          body: Padding(
            padding: padding ?? Styles.edgeInsetsAll10,
            child: child,
          ),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: context.themeData.colorScheme.surface,
                surfaceTintColor: context.themeData.colorScheme.surface,
                automaticallyImplyLeading: false,
                leadingWidth: double.infinity,
                floating: true,
                pinned: true,
                snap: true,
                expandedHeight: expandedHeight,
                leading: Padding(
                  padding: Styles.edgeInsetsAll08,
                  child: Row(
                    children: [
                      if (showBackIcon)
                        AppIconButton(
                          icon: Icons.chevron_left,
                          onPressed: () => context.pop(),
                        ),
                      Styles.gap10,
                      Expanded(
                        child: Text(
                          title,
                          style: context.textTheme.titleLarge,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: bottom,
              ),
            ];
          },
        ),
      ),
    );
  }
}

*/