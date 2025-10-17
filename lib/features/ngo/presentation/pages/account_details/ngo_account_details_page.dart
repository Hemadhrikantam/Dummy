import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_bottom_sheet.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/features/ngo/presentation/bloc/ngo_profile/ngo_profile_bloc.dart';
import 'package:dummy/features/ngo/presentation/widgets/account_details/ngo_account_details_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NgoAccountDetailsPage extends StatefulWidget {
  const NgoAccountDetailsPage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder:
          (_) => BlocProvider(
            create: (context) => InjectionBloc.ngoProfileBloc,
            child: const NgoAccountDetailsPage(),
          ),
    );
  }

  @override
  State<NgoAccountDetailsPage> createState() => _NgoAccountDetailsPageState();
}

class _NgoAccountDetailsPageState extends State<NgoAccountDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<NgoProfileBloc>().add(const NgoProfileEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTitleBaseScreen(
      title: AppText.accountDetails,
      subTitle: '',
      onlyTitle: true,
      showImage: false,
      bottom: CustomBottomSheet(
        child: BlocConsumer<NgoProfileBloc, NgoProfileState>(
          listener: (context, state) {
            if (state.submitStatus == Status.success) {
              context.pop();
            }
          },
          builder: (context, state) {
            return state.submitStatus.loading
                ? LoadingWidget.circularProgressIndicatorCenter
                : AppButton(
                  onPressed: () {
                    context.read<NgoProfileBloc>().add(
                      const NgoProfileEvent.submit(),
                    );
                  },
                  name: Text(
                    AppText.save,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                );
          },
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 12),
        child: BlocBuilder<NgoProfileBloc, NgoProfileState>(
          builder: (context, state) {
            if (state.initStatus.loading) {
              return LoadingWidget.circularProgressIndicatorCenter;
            }
            return const NgoAccountDetailsForm();
          },
        ),
      ),
    );
  }
}
