import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_api_flutter_course/models/products_model.dart';

class APIHandler {
  static Future<List<ProductsModel>> getAllProducts() async {
    var response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    // debugPrint("response ${jsonDecode(response.body)}");

    var data = jsonDecode(response.body);

    List tempList = [];

    for (var v in data) {
      tempList.add(v);
    }
    return ProductsModel.productsFromSnapshot(tempList);
  }
}
