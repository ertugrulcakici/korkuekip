import 'dart:html';

import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;
  NavigationService._internal();

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final BuildContext context = navigatorKey.currentContext!;

  static toPageNamed(String routeName) {
    navigatorKey.currentState!.pushNamed(routeName);
    Future.delayed(const Duration(milliseconds: 100),
        () => window.history.pushState(null, "", routeName));
  }

  static back() {
    navigatorKey.currentState!.pop();
    Future.delayed(
        const Duration(milliseconds: 100), () => window.history.back());
  }
}
