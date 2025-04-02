import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Extension on BuildContext that provides additional navigation utility methods.
///
/// This extension facilitates common navigation actions, simplifying code
/// for developers working on mobile and web applications.
///
/// The provided methods allow for named route navigation, pushing new routes
/// while removing existing ones, and accessing the route settings.
///
/// Usage:
/// ```dart
/// context.pushNamed('/home');
/// context.pop();
/// ```
extension AppNavigationExtension on BuildContext {
  /// Pushes the given route and removes all the routes until the provided [routeName].
  ///
  /// [routeName] is the name of the route to push.
  /// Optionally, pass arguments to the route using [arguments].
  ///
  /// Example:
  /// ```dart
  /// context.pushNamedAndRemoveUntil('/login');
  /// ```
  Future pushNamedAndRemoveUntil(String routeName, {Object? arguments}) async {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false, arguments: arguments);
  }

  /// Pushes a given route and removes all the previous routes until the provided [screen].
  ///
  /// [screen] is a [Route] object to be pushed onto the navigator.
  ///
  /// Example:
  /// ```dart
  /// final route = MaterialPageRoute(builder: (context) => HomeScreen());
  /// context.pushAndRemoveUntil(route);
  /// ```
  Future pushAndRemoveUntil(Route<Object> screen) async {
    return Navigator.of(this).pushAndRemoveUntil(screen, (route) => false);
  }

  /// Pushes the given named route onto the navigator stack.
  ///
  /// [routeName] is the name of the route to push.
  /// Optionally, pass arguments to the route using [arguments].
  ///
  /// Example:
  /// ```dart
  /// context.pushNamed('/details', arguments: {'id': 42});
  /// ```
  Future pushNamed(String routeName, {Object? arguments}) async {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  /// Pushes the given [route] onto the navigator stack.
  ///
  /// [route] is a [Route] object to be pushed onto the navigator.
  /// Optionally, pass arguments using [arguments].
  ///
  /// Example:
  /// ```dart
  /// final route = MaterialPageRoute(builder: (context) => SettingsScreen());
  /// context.push(route);
  /// ```
  Future push<T>(Route<T> route, {Object? arguments}) async {
    return Navigator.of(this).push<T>(route);
  }

  /// Pops the current route off the navigator stack.
  ///
  /// Optionally, pass an object that will be returned when the route is popped.
  ///
  /// Example:
  /// ```dart
  /// context.pop();
  /// ```
  void pop({Object? object}) {
    return Navigator.of(this).pop(object);
  }

  void popUntil(bool Function(Route<dynamic>) predicate) {
    return Navigator.of(this).popUntil(predicate);
  }

  /// Retrieves the settings of the current route.
  ///
  /// This returns the [RouteSettings] object associated with the current route,
  /// which may contain information such as the route name and arguments.
  ///
  /// Example:
  /// ```dart
  /// final settings = context.routeSettings;
  /// print(settings?.name);
  /// ```
  RouteSettings? get routeSettings => ModalRoute.of(this)?.settings;
}
