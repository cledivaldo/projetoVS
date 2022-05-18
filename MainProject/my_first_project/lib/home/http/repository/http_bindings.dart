import 'package:get/get.dart';
import 'package:my_first_project/home/http/repository/http_controller.dart';
import 'package:my_first_project/home/http/repository/product_http_repository.dart';
import 'package:my_first_project/repository/i_product_repository.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IProductRepository>(ProductHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
