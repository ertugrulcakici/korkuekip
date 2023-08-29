part of 'responsive_navbar.dart';

class _NavBarWeb extends StatelessWidget {
  const _NavBarWeb();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _items(),
          _contact(),
        ],
      ),
    );
  }

  Container _contact() {
    return Container(
      height: 100,
      width: 100,
      color: Colors.yellow,
      child: const Center(child: MyText("İletişim")),
    );
  }

  Widget _items() {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavbarItem(title: "Ana Sayfa", route: RouteConstants.anasayfa),
          NavbarItem(title: "Kurumsal", subItems: const [
            NavbarSubItem(
                title: "Hakkımızda", route: RouteConstants.hakkimizda),
            NavbarSubItem(title: "Ekibimiz", route: RouteConstants.ekibimiz),
            NavbarSubItem(
                title: "Sıkça sorulan sorular", route: RouteConstants.sss),
          ]),
          NavbarItem(title: "Konseptler", route: RouteConstants.konseptler),
          //sitedekinin aynı
          // Konsept sayfası:
          // 	-resimler olacak alt alta
          NavbarItem(
              title: "Elektronik Şifreler",
              route: RouteConstants.elektronikSifreler),
          //         sayfada alt alta resim veya videolar sergilenecek
          // ürün kartının altına açıklama girilecek
          NavbarItem(
            title: "Dekor",
            subItems: const [
              NavbarSubItem(
                  title: "Mankenler", route: RouteConstants.mankenler),
              NavbarSubItem(
                  title: "Elektronik Dekor",
                  route: RouteConstants.elektronikDekor),
            ],
          ),
          // ürün kartlarının altına açıklama gelecek
        ],
      ),
    );
  }

  Container _logo() {
    return Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
        child: const Center(child: Text("LOGO")));
  }
}
