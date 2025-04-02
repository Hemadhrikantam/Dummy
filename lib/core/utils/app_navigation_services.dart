import 'package:flutter/widgets.dart';

import 'log_utility.dart';

class AppNavigationObervers implements NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    LogUtility.customLog(ColorText.magenta('Route $route previousRoute $previousRoute'),
        name: 'App Navigation didPop');
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    LogUtility.customLog(ColorText.magenta('Route $route previousRoute $previousRoute'),
        name: 'App Navigation didPush');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    LogUtility.customLog(ColorText.magenta('Route $route previousRoute $previousRoute'),
        name: 'App Navigation didRemove');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    LogUtility.customLog(ColorText.magenta('Route $newRoute New Route $newRoute'),
        name: 'App Navigation didReplace');
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    LogUtility.customLog(ColorText.magenta('Route $route previousRoute $previousRoute'),
        name: 'App Navigation didStartUserGesture');
  }

  @override
  void didStopUserGesture() {
    LogUtility.customLog(ColorText.magenta('didStopUserGesture'),
        name: 'App Navigation didStartUserGesture');
  }

  @override
  NavigatorState? get navigator => null;
  
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    // TODO: implement didChangeTop
  }
}
