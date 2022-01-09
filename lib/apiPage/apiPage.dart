import 'dart:convert';

import 'package:http/http.dart' as http;

class GetApi {
  Future ProductList() async {
    final ProductListUrl = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(ProductListUrl);
    return json.decode(response.body);
  }

  Future getCatagories() async {
    final getCatagoriesURL =
        Uri.parse('https://fakestoreapi.com/products/categories/');
    final response = await http.get(getCatagoriesURL);
    return json.decode(response.body);
  }
}
