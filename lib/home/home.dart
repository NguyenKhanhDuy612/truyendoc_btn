
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/class_the_loai.dart';
import '../provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ProductProvider? productProvider;
  List<theloai>? listTL;


  @override
  void initState() {
    ProductProvider? productProvider = Provider.of(context, listen: false);
    productProvider?.truyenCuoiDS;
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context, listen: true);
    listTL = productProvider!.gettruyenCuoiData;
    return Scaffold(
        body: ListView.builder(
          itemCount: listTL!.length,
          itemBuilder: (context, index) {
            theloai tl = listTL![index];
            return ListTile(
              leading: Text(tl.AnhTL),
              title: Text(tl.TenTL),
              subtitle: Text(tl.MaTL),
            );
          },),
    );
  }
}

