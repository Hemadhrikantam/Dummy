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
      ],
      child: const App(),
    );
  }
}
