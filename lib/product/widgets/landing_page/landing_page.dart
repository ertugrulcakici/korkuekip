import 'package:flutter/material.dart';
import 'package:korkuekip/product/widgets/footbar/responsive_footbar.dart';
import 'package:korkuekip/product/widgets/navbar/responsive_navbar.dart';

class LandingPage extends StatefulWidget {
  final Widget innerWidget;
  const LandingPage({super.key, required this.innerWidget});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ResponsiveNavbar(),
            Padding(
                padding: const EdgeInsets.all(8.0), child: widget.innerWidget),
            const ResponsiveFootbar(),
          ],
        ),
      ),
    );
  }
}
