// import 'package:btn_didong/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'class_the_loai.dart';

class ProductProvider with ChangeNotifier {
  List<theloai> truyenCuoiDS = [];
  theloai? tl;

  truyenCuoiData() async {
    List<theloai> newList = [];
    QuerySnapshot value =
    await FirebaseFirestore.instance.collection("TruyenCuoi").get();

    value.docs.forEach((element) {
      // print(element.data());
          tl = theloai(
      MaTL: element.get("MaTL"),
      TenTL: element.get("TenTL"),
      AnhTL: element.get("AnhTL")
      );
      newList.add(tl!);
    },);
    truyenCuoiDS = newList;
    notifyListeners();
  }

  List<theloai> get gettruyenCuoiData{
    return truyenCuoiDS;
  }
}

///////////////////////

