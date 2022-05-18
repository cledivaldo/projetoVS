import 'package:get/get.dart';

import '../../../repository/i_product_repository.dart';

class HttpController extends GetxController with StateMixin {
  final IProductRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findProducts();
  }

  Future<void> findProducts() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllProducts();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar produtos!'));
    }
  }
}
