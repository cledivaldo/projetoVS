import '../model/product/product_model.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> findAllProducts();
}
