
import 'package:cloud_firestore/cloud_firestore.dart';

class theloai{
  late String MaTL, TenTL, AnhTL;

  theloai({required MaTL, required TenTL, required AnhTL});

  //loading
  factory theloai.fromJson(Map<String, dynamic> json){
    return theloai(
        MaTL: json['MaTL'],
        TenTL: json['TenTL'],
        AnhTL: json['AnhTL']
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'MaTL' : MaTL,
      'TenTL' : TenTL,
      'AnhTL' : AnhTL,
    };
  }
}




