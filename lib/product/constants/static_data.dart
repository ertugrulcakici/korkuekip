import 'package:korkuekip/core/services/navigation/route_constants.dart';

abstract class StaticData {
  static const Map<String, String> hakkimizdaMetinleri = {
    "Biz Kimiz": "Biz Kimiz",
    "Misyonumuz": "Misyonumuz",
    "Vizyonumuz": "Vizyonumuz",
  };

  static const Map<String, String> sssMetinleri = {
    "Sıkça sorulan soru 1":
        "Ad ex officia et sint tempor excepteur laborum duis proident aute proident veniam. Pariatur enim excepteur laboris dolore dolor. Lorem sit labore labore exercitation eu occaecat proident magna in anim sit. Deserunt veniam ut in proident consequat labore culpa in pariatur excepteur veniam.Ad nulla nostrud esse excepteur. Culpa ut reprehenderit culpa voluptate ea do ex commodo anim id in. Quis incididunt do occaecat Lorem eiusmod. Amet ex nostrud aliquip non officia pariatur sint sunt. Pariatur veniam irure cillum sint laborum occaecat nulla eiusmod cupidatat velit incididunt esse mollit.Magna labore aute in ea eiusmod minim incididunt enim deserunt aliquip elit enim minim ea. Excepteur nostrud irure minim pariatur sint sit commodo irure labore pariatur ex. Reprehenderit ad velit reprehenderit non cupidatat velit nostrud est non sit consectetur. Aliqua ipsum proident deserunt ipsum nisi ullamco laborum laborum sunt dolor velit. Quis ea pariatur eiusmod consectetur deserunt esse est nulla duis. In exercitation tempor velit enim. Ullamco aute eu proident irure minim nulla non nisi.",
    "SSS2 ":
        "Magna cillum ut ea sunt commodo amet ea voluptate id nulla pariatur. Non deserunt culpa pariatur cillum enim. Sit sit consectetur commodo ipsum laborum occaecat aute laborum elit ut. Est et voluptate exercitation incididunt minim irure eiusmod anim sit excepteur aute proident.Dolor sunt esse ea amet labore sit eu. Adipisicing commodo laboris ipsum aliqua dolore. Dolore velit aliqua sint non. Eiusmod nulla in eu proident exercitation. Officia irure mollit sint tempor sint magna dolor laboris culpa eu mollit culpa. Eiusmod reprehenderit excepteur aliqua non."
  };

  static const Map<String, dynamic> navBarItems = {
    "Kurumsal": {
      "Hakkımızda": RouteConstants.hakkimizda,
      "Ekibimiz": RouteConstants.ekibimiz,
      "Sıkça Sorulan Sorular": RouteConstants.sss,
    },
    "Konseptler": RouteConstants.konseptler,
    "Elektronik Şifreler": RouteConstants.elektronikSifreler,
    "Dekor": {
      "Mankenler": RouteConstants.mankenler,
      "Elektronik Dekor": RouteConstants.elektronikDekor,
    }
  };

  static const Map<String, dynamic> footBarItems = {
    "Kurumsal": {
      "Hakkımızda": RouteConstants.hakkimizda,
      "Ekibimiz": RouteConstants.ekibimiz,
      "Sıkça Sorulan Sorular": RouteConstants.sss,
    },
    "Konseptler": RouteConstants.konseptler,
    "Elektronik Şifreler": RouteConstants.elektronikSifreler,
    "Dekor": {
      "Mankenler": RouteConstants.mankenler,
      "Elektronik Dekor": RouteConstants.elektronikDekor,
    }
  };
}
