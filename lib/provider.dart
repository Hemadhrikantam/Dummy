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
        BlocProvider(create: (context) => InjectionBloc.dailyCareBloc),
        BlocProvider(create: (context) => InjectionBloc.healthBloc),
        BlocProvider(create: (context) => InjectionBloc.notificationsBloc),
        BlocProvider(create: (context) => InjectionBloc.accountBloc),
        BlocProvider(create: (context) => InjectionBloc.vetNearMeBloc),
        BlocProvider(create: (context) => InjectionBloc.ngoHomeBloc),
        BlocProvider(create: (context) => InjectionBloc.ngoRegistrationBloc),
        BlocProvider(create: (context) => InjectionBloc.registerBloc),
        BlocProvider(create: (context) => InjectionBloc.petDairyBloc),
        BlocProvider(create: (context) => InjectionBloc.dashboardBloc),
        BlocProvider(create: (context) => InjectionBloc.mealsBloc),
        BlocProvider(create: (context) => InjectionBloc.walksBloc),
        BlocProvider(create: (context) => InjectionBloc.groomingsBloc),
        BlocProvider(create: (context) => InjectionBloc.expensesBloc),
        BlocProvider(create: (context) => InjectionBloc.dewormingsBloc),
        BlocProvider(create: (context) => InjectionBloc.overviewBloc),
        BlocProvider(create: (context) => InjectionBloc.medicationsBloc),
        BlocProvider(create: (context) => InjectionBloc.vaccinationsBloc),
        BlocProvider(create: (context) => InjectionBloc.vaccinationDetailsBloc),
        BlocProvider(create: (context) => InjectionBloc.adoptionBloc),
        BlocProvider(create: (context) => InjectionBloc.addAdoptionBloc),
        BlocProvider(create: (context) => InjectionBloc.wagAiBloc),
        BlocProvider(create: (context) => InjectionBloc.mealFormBloc),
      ],
      child: const App(),
    );
  }
}
