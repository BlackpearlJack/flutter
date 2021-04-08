// import 'dart:convert';
//
// import 'package:rest_api_integration/constants/strings.dart';
// import 'package:rest_api_integration/models/products.dart';
// import 'package:http/http.dart' as http;
//
// class ApiProductManager {
//   Future<Products> getProducts() async {
//     var client = http.Client();
//     var productsModel;
//
//     try {
//       var response = await client.get(Strings.products_url);
//       if (response.statusCode == 200) {
//         var jsonString = response.body;
//         var jsonMap = json.decode(jsonString);
//
//         productsModel = Products.fromJson(jsonMap);
//       }
//     } catch (Exception) {
//       return productsModel;
//     }
//
//     return productsModel;
//   }
// }