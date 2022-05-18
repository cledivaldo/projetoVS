import 'package:my_first_project/model/product/product_model.dart';
import 'package:my_first_project/repository/i_product_repository.dart';

import '../../../shared/rest_client.dart';

class ProductGetConnectRepository implements IProductRepository {
  final RestClient restCliente;

  ProductGetConnectRepository(this.restCliente);

  @override
  Future<List<ProductModel>> findAllProducts() async {
    var url = 'https://6283ca5292a6a5e462293d39.mockapi.io/keval/produto';

    //Assim:(
    final response = await restCliente.get(url);
    List<dynamic> data = response.body;
    return data.map((e) => ProductModel.fromMap(e)).toList();

    //Ou assim:

    // final response = await restCliente.get(url, decoder: (body) {
    //   if (body is List) {
    //     return body.map<ProductModel>((e) => ProductModel.fromMap(e)).toList();
    //   }
    //   return null;
    // });

    // if (response.statusCode == 500) {}

    // if (response.hasError) {
    //   throw Exception('Erro ao buscar produtos!');
    // }
  }
}
