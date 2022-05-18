import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DioController())
  }
}