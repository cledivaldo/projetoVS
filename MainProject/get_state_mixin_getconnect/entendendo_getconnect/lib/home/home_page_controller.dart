import 'package:get/get.dart';

import 'models/giphy_model.dart';
import 'repository/giphy_repository.dart';

class HomePageController extends GetxController
    with StateMixin<List<GiphyModel>> {
  final GiphyRepository _repository;

  HomePageController(this._repository);

  @override
  void onInit() {
    super.onInit();
    _repository.findAll().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      // ignore: avoid_print
      print(err);
      change(
        null,
        status: RxStatus.error('Erro ao Buscar Gifs'),
      );
    });
  }
}
