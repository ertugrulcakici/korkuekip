import 'package:flutter/material.dart';
import 'package:korkuekip/product/widgets/footbar/footbar_mobile.dart';
import 'package:korkuekip/product/widgets/footbar/footbar_web.dart';

class ResponsiveFootbar extends StatelessWidget {
  const ResponsiveFootbar({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double width = mediaQuery.size.width;
    double height = mediaQuery.size.height;

    if (width < height) {
      return const FootBarMobile();
    } else {
      return const FootBarWeb();
    }
  }
}
