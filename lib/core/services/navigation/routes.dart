import 'package:flutter/material.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';
import 'package:korkuekip/core/services/navigation/route_constants.dart';
import 'package:korkuekip/view/ekibimiz/ekibimiz_view.dart';
import 'package:korkuekip/view/elektronik_dekor/elektronik_dekor_view.dart';
import 'package:korkuekip/view/elektronik_sifreler/elektronik_sifreler_view.dart';
import 'package:korkuekip/view/hakkimizda/hakkimizda_view.dart';
import 'package:korkuekip/view/home/home_view.dart';
import 'package:korkuekip/view/konseptler/konseptler_view.dart';
import 'package:korkuekip/view/mankenler/mankenler_view.dart';
import 'package:korkuekip/view/sss/sss_view.dart';

class Routes {
  static MaterialPageRoute _getRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }

  static List<Route<dynamic>> generateInitialRoutes(String initialRouteName) {
    final Widget Function(BuildContext)? route = routes[initialRouteName];
    if (route != null) {
      return [_getRoute(route(NavigationService.context))];
    }
    return [
      _getRoute(Scaffold(
        appBar: AppBar(
          title: const Text("404"),
        ),
      )),
    ];
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    RouteConstants.anasayfa: (_) => const HomeView(),
    RouteConstants.ekibimiz: (_) => const EkibimizView(),
    RouteConstants.elektronikDekor: (_) => const ElektronikDekorView(),
    RouteConstants.elektronikSifreler: (_) => const ElektronikSifrelerView(),
    RouteConstants.hakkimizda: (_) => const HakkimizdaView(),
    RouteConstants.konseptler: (_) => const KonseptlerView(),
    RouteConstants.mankenler: (_) => const MankenlerView(),
    RouteConstants.sss: (_) => const SSSView(),
  };
}
