import 'package:flutter/material.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';

class CustomThemeData {
  static const Color primaryColor = Color(0xFFFAFAFA);

  static final TextStyle appBarText =
      Theme.of(NavigationService.context).textTheme.headlineLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          );

  static final TextStyle footerText =
      Theme.of(NavigationService.context).textTheme.headlineLarge!.copyWith(
            color: Colors.white,
            fontSize: 16,
          );
  static final TextStyle footerTextHeader =
      Theme.of(NavigationService.context).textTheme.headlineLarge!.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          );

  static const Radius radius = Radius.circular(15);
}
