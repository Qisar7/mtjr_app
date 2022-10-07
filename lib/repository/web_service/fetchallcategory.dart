// import 'dart:convert';

// import 'package:fakeshop1/model/allproduct_model.dart';
// import 'package:fakeshop1/repository/constant/api_const.dart';
// import 'package:http/http.dart' as http;

// class Allcatergory {
//   final url = Uri.parse(baseurl);

//   Future<String> getallcatergorydata() async {
//     try {
//       var Response = await http.get(url);

//       var data = Response.body;
//       print(data);
//       return data;
//     } on Exception catch (e) {
//       print('--------' + e.toString());
//       return ' ';
//     }
//   }
// }
