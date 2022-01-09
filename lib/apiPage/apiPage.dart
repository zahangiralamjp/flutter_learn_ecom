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

  Future getProductDetails(int id) async {
    final getProductDetailsURL =
        Uri.parse('https://fakestoreapi.com/products/$id');
    final response = await http.get(getProductDetailsURL);
    return json.decode(response.body);
  }

  Future getcatagoriesByProduct(String cata) async {
    final catagoriesByProductURL =
        Uri.parse('https://fakestoreapi.com/products/category/$cata');
    final response = await http.get(catagoriesByProductURL);
    return json.decode(response.body);
  }
}
