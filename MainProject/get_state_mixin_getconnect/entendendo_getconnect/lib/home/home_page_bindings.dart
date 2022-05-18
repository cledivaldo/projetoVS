import 'package:get/get.dart';

import 'home_page_controller.dart';
import 'repository/giphy_repository.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiphyRepository());
    Get.lazyPut(() => HomePageController(Get.find()));
  }
}
