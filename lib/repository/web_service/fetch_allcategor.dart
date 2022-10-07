import 'dart:convert';

import 'package:fakeshop1/model/allproduct_model.dart';
import 'package:fakeshop1/repository/constant/api_const.dart';
import 'package:http/http.dart' as http;

class NetWork {
  final url = Uri.parse(baseurl);
  final caturl = Uri.parse(allcategores);

  Future<List<AllProduct>> getallprodectdata() async {
    var Response = await http.get(url);

    var data = (jsonDecode(Response.body) as List)
        .map((e) => AllProduct.fromJson(e))
        .toList();

    return data;
  }

  Future<Object> getallcatergorydata() async {
    try {
      var Response = await http.get(caturl);

      var data = jsonDecode(Response.body);
      print(data);
      return List.from(data);
    } on Exception catch (e) {
      print('--------' + e.toString());
      return ' ';
    }
  }
}
