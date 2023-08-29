part of 'responsive_navbar.dart';

class _NavBarMobile extends StatefulWidget {
  const _NavBarMobile();

  @override
  State<_NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<_NavBarMobile> {
  late final OverlayEntry _overlayEntry;
  bool _overlayVisible = false;

  @override
  void initState() {
    _overlayEntry = _createOverlayEntry();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Overlay.of(context).insert(_overlayEntry);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Seo.image(
                alt: "Korku Ekip",
                src: "https://picsum.photos/400/100",
                child: Image.network(
                  "https://picsum.photos/400/100",
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    if (_overlayVisible == false) {
                      _showOverlay();
                    } else {
                      _hideOverlay();
                    }
                  },
                  child: Center(
                      child: _overlayVisible == false
                          ? const Icon(Icons.menu, color: Colors.white)
                          : const Icon(Icons.close, color: Colors.white)),
                ))
          ],
        ));
  }

  _showOverlay() {
    _overlayEntry.markNeedsBuild();
    setState(() {
      _overlayVisible = true;
    });
  }

  _hideOverlay() {
    _overlayEntry.markNeedsBuild();
    setState(() {
      _overlayVisible = false;
    });
  }

  _createOverlayEntry() {
    return OverlayEntry(
        builder: (context) => Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  top: 100,
                  left: 0,
                  right: 0,
                  child: _AnimatedOverlayContainer(
                      visible: _overlayVisible, hideOverlay: _hideOverlay),
                ),
              ],
            ));
  }
}

class _AnimatedOverlayContainer extends StatefulWidget {
  final bool visible;
  final VoidCallback hideOverlay;

  const _AnimatedOverlayContainer(
      {required this.visible, required this.hideOverlay});

  @override
  _AnimatedOverlayContainerState createState() =>
      _AnimatedOverlayContainerState();
}

class _AnimatedOverlayContainerState extends State<_AnimatedOverlayContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.visible ? 1 : 0,
      duration: const Duration(milliseconds: 500),
      child: widget.visible
          ? Material(
              elevation: 0,
              borderRadius: const BorderRadius.all(CustomThemeData.radius),
              child: ListView(
                  shrinkWrap: true,
                  children: StaticData.navBarItems.keys
                      .map((menuName) => StaticData.navBarItems[menuName]
                              is String
                          ? ListTile(
                              onTap: () {
                                widget.hideOverlay();
                                NavigationService.toPageNamed(
                                    StaticData.navBarItems[menuName]!);
                              },
                              title: MyText(menuName))
                          : ExpansionTile(
                              title: MyText(menuName),
                              children: (StaticData.navBarItems[menuName]
                                      as Map)
                                  .keys
                                  .map((subMenuName) => ListTile(
                                        title: MyText(subMenuName),
                                        onTap: () {
                                          widget.hideOverlay();
                                          NavigationService.toPageNamed(
                                              (StaticData.navBarItems[menuName]
                                                      as Map<String, String>)[
                                                  subMenuName]!);
                                        },
                                      ))
                                  .toList()))
                      .toList()),
            )
          : null,
    );
  }
}
