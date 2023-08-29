import 'package:flutter/material.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';
import 'package:korkuekip/core/services/navigation/route_constants.dart';
import 'package:korkuekip/product/constants/static_data.dart';
import 'package:korkuekip/product/theme/themedata.dart';
import 'package:korkuekip/product/widgets/my_text.dart';
import 'package:korkuekip/product/widgets/navbar/navbar_item.dart';
import 'package:korkuekip/product/widgets/navbar/navbar_subitem.dart';
import 'package:seo/seo.dart';

part 'navbar_mobile.dart';
part 'navbar_web.dart';

class ResponsiveNavbar extends StatelessWidget {
  const ResponsiveNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    if (mediaQuery.size.width > mediaQuery.size.height) {
      return const _NavBarWeb();
    } else {
      return const _NavBarMobile();
    }
  }
}
