import 'package:get/get.dart';
import 'package:my_first_project/home/get_connect/get_connect_controller.dart';
import 'package:my_first_project/home/get_connect/repository/product_get_connect_repository.dart';
import 'package:my_first_project/repository/i_product_repository.dart';

class GetConnectBindings implements Bindings {
  @override
  void dependencies() {
    //Get.put(RestClient()); foi para a classe homebinds
    Get.put<IProductRepository>(ProductGetConnectRepository(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}
