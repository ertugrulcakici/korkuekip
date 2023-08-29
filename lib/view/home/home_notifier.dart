import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier {
  String data = "henüz boş";
  Future<void> getHomeData() async {
    FirebaseFirestore.instance
        .collection("home")
        .doc("data")
        .get()
        .then((value) {
      data = value.data()!["data"].toString();
      notifyListeners();
    });
  }
}
