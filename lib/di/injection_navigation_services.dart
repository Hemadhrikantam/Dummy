part of 'injection.dart';

final NavigationService navigationService = getIt<NavigationService>();

final GlobalKey<NavigatorState> navigatorState = getIt<NavigationService>().navigatorKey;

final BuildContext currentContext = navigatorState.currentContext!;
