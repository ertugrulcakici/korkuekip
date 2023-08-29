import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';
import 'package:korkuekip/core/services/navigation/routes.dart';
import 'package:korkuekip/product/theme/themedata.dart';
import 'package:seo/seo.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

void main() async {
  setPathUrlStrategy();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => child!,
      designSize: MediaQuery.of(context).size,
      child: SeoController(
        tree: WidgetTree(context: context),
        child: ProviderScope(
          child: MaterialApp(
              title: 'Korku Ekip',
              onGenerateInitialRoutes: Routes.generateInitialRoutes,
              routes: Routes.routes,
              debugShowCheckedModeBanner: false,
              navigatorKey: NavigationService.navigatorKey,
              theme: ThemeData(
                  scaffoldBackgroundColor: CustomThemeData.primaryColor,
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: CustomThemeData.primaryColor))),
        ),
      ),
    );
  }
}
