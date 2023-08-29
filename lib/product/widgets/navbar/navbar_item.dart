import 'package:flutter/material.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';
import 'package:korkuekip/product/theme/themedata.dart';
import 'package:korkuekip/product/widgets/navbar/navbar_subitem.dart';
import 'package:seo/html/seo_widget.dart';

class NavbarItem extends StatefulWidget {
  final List<NavbarSubItem> subs = [];
  final String title;
  final String? route;
  NavbarItem(
      {super.key,
      required this.title,
      List<NavbarSubItem> subItems = const [],
      this.route}) {
    subs.addAll(subItems);
  }

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  OverlayEntry? overlayEntry;
  late final FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        showOverlay(context);
      } else {
        removeOverlay(context);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    overlayEntry?.remove();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        focusNode: focusNode,
        onPressed: () {
          if (widget.subs.isEmpty && widget.route != null) {
            NavigationService.toPageNamed(widget.route!);
          }
        },
        onHover: (value) {
          if (value) {
            focusNode.requestFocus();
          }
        },
        child: Seo.text(
            text: widget.title,
            child: Text(widget.title.toUpperCase(),
                style: CustomThemeData.appBarText)),
      ),
    );
  }

  showOverlay(BuildContext context) {
    if (widget.subs.isEmpty) {
      return;
    }
    final OverlayState overlayState = Overlay.of(context);
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    overlayEntry = OverlayEntry(
        maintainState: true,
        builder: (context) => Positioned(
              left: offset.dx,
              top: offset.dy + size.height,
              width: 300,
              child: _subMenu(),
            ));

    overlayState.insert(overlayEntry!);
  }

  Widget _subMenu() {
    return MouseRegion(
      onExit: (event) => focusNode.unfocus(),
      child: Material(
        elevation: 0,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: widget.subs.length,
          itemBuilder: (context, index) => widget.subs[index],
          separatorBuilder: (context, index) => const SizedBox(height: 20),
        ),
      ),
    );
  }

  removeOverlay(BuildContext context) {
    if (overlayEntry == null || !overlayEntry!.mounted || widget.subs.isEmpty) {
      return;
    }
    overlayEntry!.remove();
    overlayEntry = null;
  }
}
