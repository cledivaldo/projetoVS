import 'package:get/get.dart';
import 'package:my_first_project/repository/i_product_repository.dart';

class GetConnectController extends GetxController with StateMixin {
  final IProductRepository _getConnectRepository;

  GetConnectController(this._getConnectRepository);

  @override
  void onInit() {
    super.onInit();
    findProducts();
  }

  Future<void> findProducts() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _getConnectRepository.findAllProducts();
      change(dados, status: RxStatus.success());
    } catch (e) {
      // ignore: avoid_print
      print(e);
      change([], status: RxStatus.error('Erro ao buscar produtos'));
    }
  }
}
