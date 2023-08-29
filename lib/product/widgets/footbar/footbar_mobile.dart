import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korkuekip/core/services/navigation/navigation_service.dart';
import 'package:korkuekip/product/constants/static_data.dart';
import 'package:korkuekip/product/theme/themedata.dart';
import 'package:korkuekip/product/widgets/my_text.dart';
import 'package:seo/io/seo_widget.dart';

class FootBarMobile extends StatelessWidget {
  const FootBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.05.sh),
      color: Colors.black,
      child: Column(
        children: [
          _body(),
          Divider(color: Colors.white, height: 0.05.sh),
          _icons(),
          Divider(color: Colors.transparent, height: 0.05.sh),
          _rights(context),
        ],
      ),
    );
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ..._logo(),
        ..._items(),
      ],
    );
  }

  Widget _icons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _rights(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText("© 2021 Korku Ekibi",
              style: TextStyle(color: Colors.white, fontSize: 0.03.sw)),
          MyText("Tüm hakları saklıdır.",
              style: TextStyle(color: Colors.white, fontSize: 0.03.sw)),
        ],
      ),
    );
  }

  List<Widget> _logo() {
    return [
      Seo.image(
          alt: "Korku Ekip",
          src: "https://picsum.photos/400/100",
          child: Image.network("https://picsum.photos/400/100")),
      SizedBox(height: 0.02.sh),
      MyText(
          "Türkiye'nin en büyük kaçış ve korku evleri platformu gururla sunar!",
          style: TextStyle(color: Colors.white, fontSize: 0.03.sw)),
      SizedBox(height: 0.04.sh)
    ];
  }

  List<Widget> _items() {
    List<Widget> items = [];
    for (var element in StaticData.footBarItems.entries) {
      if (element.value is Map) {
        // başlık
        if (items.isNotEmpty) {
          items.add(const Divider());
        }
        items.add(InkWell(
            onTap: () {
              NavigationService.toPageNamed(element.value.values.first);
            },
            child:
                MyText(element.key, style: CustomThemeData.footerTextHeader)));
        items.add(SizedBox(height: 0.01.sh));
        // alt başlıklar
        for (var element in (element.value as Map).entries) {
          items.add(InkWell(
            onTap: () {
              NavigationService.toPageNamed(element.value);
            },
            child: MyText(element.key,
                style: TextStyle(color: Colors.white, fontSize: 0.03.sw)),
          ));
          items.add(SizedBox(height: 0.01.sh));
        }
      } else {
        if (items.isNotEmpty) {
          items.add(const Divider());
        }
        // alt başlıksız başlık
        items.add(InkWell(
            onTap: () {
              NavigationService.toPageNamed(element.value);
            },
            child:
                MyText(element.key, style: CustomThemeData.footerTextHeader)));
      }
    }
    return items;
  }
}
