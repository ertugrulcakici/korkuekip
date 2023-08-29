import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korkuekip/product/theme/themedata.dart';
import 'package:seo/io/seo_widget.dart';

class FootBarWeb extends StatelessWidget {
  const FootBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 0.7.sh,
      child: Column(
        children: [
          _body(),
          const Divider(color: Colors.white),
          _icons(),
          _rights(context),
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
      flex: 7,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.05.sh),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Seo.image(
                      alt: "Korku Ekip",
                      src: "https://picsum.photos/400/100",
                      child: Image.network("https://picsum.photos/400/100")),
                  Seo.text(
                    text:
                        "Türkiye'nin en büyük kaçış ve korku evleri platformu gururla sunar!",
                    child: Text(
                        "Türkiye'nin en büyük kaçış ve korku evleri platformu gururla sunar!",
                        style: CustomThemeData.footerText),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Seo.text(
                          text: "Kurumsal",
                          child: Text("Kurumsal",
                              style: CustomThemeData.footerTextHeader)),
                      Seo.text(
                          text: "Hakkımızda",
                          child: Text("Hakkımızda",
                              style: CustomThemeData.footerText)),
                      Seo.text(
                          text: "Ekibimiz",
                          child: Text("Ekibimiz",
                              style: CustomThemeData.footerText)),
                      Seo.text(
                          text: "Sıkça sorulan sorular",
                          child: Text("Sıkça sorulan sorular",
                              style: CustomThemeData.footerText)),
                    ])),
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Seo.text(
                          text: "Korku Evi",
                          child: Text("Korku Evi",
                              style: CustomThemeData.footerTextHeader)),
                      Seo.text(
                          text: "Korku Evi Ekle",
                          child: Text("Korku Evi Ekle",
                              style: CustomThemeData.footerText)),
                      Seo.text(
                          text: "Korku Evi Ara",
                          child: Text("Korku Evi Ara",
                              style: CustomThemeData.footerText)),
                      Seo.text(
                          text: "Korku Evi İncele",
                          child: Text("Korku Evi İncele",
                              style: CustomThemeData.footerText)),
                    ])),
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Seo.text(
                          text: "İletişim",
                          child: Text("İletişim",
                              style: CustomThemeData.footerTextHeader)),
                      Seo.text(
                          text: "İletişim",
                          child: Text("İletişim",
                              style: CustomThemeData.footerText)),
                      Seo.text(
                          text: "İletişim",
                          child: Text("İletişim",
                              style: CustomThemeData.footerText)),
                      Seo.text(
                          text: "İletişim",
                          child: Text("İletişim",
                              style: CustomThemeData.footerText)),
                    ])),
          ],
        ),
      ),
    );
  }

  Widget _icons() {
    List<IconButton> items = [
      IconButton(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        color: Colors.white,
      ),
      IconButton(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        color: Colors.white,
      ),
      IconButton(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        color: Colors.white,
      ),
      IconButton(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        color: Colors.white,
      ),
      IconButton(
        icon: const Icon(Icons.facebook),
        onPressed: () {},
        color: Colors.white,
      ),
    ];
    return Expanded(
      child: Center(
        child: Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => items[index],
            separatorBuilder: (context, index) => SizedBox(width: 0.05.sw),
            itemCount: items.length,
          ),
        ),
      ),
    );
  }

  Widget _rights(BuildContext context) {
    return SizedBox(
      height: 0.1.sh,
      width: double.infinity,
      child: Center(
        child: Seo.text(
          text: "© 2021 Korku Ekip",
          child: Text(
            "© 2021 Korku Ekip",
            style: CustomThemeData.footerTextHeader,
          ),
        ),
      ),
    );
  }
}
