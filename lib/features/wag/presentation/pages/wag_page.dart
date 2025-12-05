import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/wag/presentation/bloc/wag_ai/wag_ai_bloc.dart';
import 'package:dummy/features/wag/presentation/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/styles.dart';
import '../../../../core/widgets/custom_header_widget.dart';

class WagPage extends StatefulWidget {
  const WagPage({super.key});
  static const routeName = '/WagPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const WagPage(),

      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _WagPage();
}

class _WagPage extends State<WagPage> {
  @override
  initState() {
    super.initState();
    context.read<WagAiBloc>().add(const WagAiEvent.initialization());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: AppColors.screenBackgroundColor,
            ),
            child: SafeArea(
              child: Padding(
                padding: Styles.edgeInsetsAll12,
                child: Column(
                  children: [
                    CustomHeaderWidget(petImage: state.petImage),
                    Styles.gap30,
                    Expanded(child: ChatCard()),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
