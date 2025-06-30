import 'package:dummy/app.dart';
import 'package:dummy/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => InjectionBloc.authBloc),
        BlocProvider(create: (context) => InjectionBloc.registerBloc),
        BlocProvider(create: (context) => InjectionBloc.petDairyBloc),
        BlocProvider(create: (context) => InjectionBloc.dashboardBloc),
        BlocProvider(create: (context) => InjectionBloc.mealsBloc),
        BlocProvider(create: (context) => InjectionBloc.walksBloc),
        BlocProvider(create: (context) => InjectionBloc.groomingsBloc),
        BlocProvider(create: (context) => InjectionBloc.expensesBloc),
        BlocProvider(create: (context) => InjectionBloc.dewormingsBloc),
        BlocProvider(create: (context) => InjectionBloc.medicationsBloc),
      ],
      child: const App(),
    );
  }
}
