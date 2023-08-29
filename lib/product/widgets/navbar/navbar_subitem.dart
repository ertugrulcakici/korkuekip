import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';
import 'package:korkuekip/product/theme/themedata.dart';
import 'package:seo/html/seo_widget.dart';

class NavbarSubItem extends StatefulWidget {
  final String title;
  final String? route;
  const NavbarSubItem({super.key, required this.title, this.route});

  @override
  State<NavbarSubItem> createState() => _NavbarSubItemState();
}

class _NavbarSubItemState extends State<NavbarSubItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (widget.route != null) {
            NavigationService.toPageNamed(widget.route!);
          }
        },
        child: HoverOver(
          translateXAxis: 10,
          animationDurationInMilliseconds: 100,
          builder: (isHovered) => Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Seo.text(
                text: widget.title,
                child: Text(
                  widget.title,
                  style:
                      CustomThemeData.appBarText.copyWith(color: Colors.black),
                ),
              )),
        ),
      ),
    );
  }
}
