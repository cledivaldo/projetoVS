import 'dart:convert';

import '../../../model/product/product_model.dart';
import '../../../repository/i_product_repository.dart';
import 'package:http/http.dart' as http;

class ProductHttpRepository implements IProductRepository {
  @override
  Future<List<ProductModel>> findAllProducts() async {
    var url = 'https://6283ca5292a6a5e462293d39.mockapi.io/keval/produto';
    try {
      final response = await http.get(Uri.parse(url));

      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap
          .map<ProductModel>((resp) => ProductModel.fromMap(resp))
          .toList();
    } catch (e) {
      // ignore: avoid_print
      print(e);
      rethrow;
    }
  }
}
