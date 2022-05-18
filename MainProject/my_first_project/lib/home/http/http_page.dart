import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/home/http/repository/http_controller.dart';

import '../../model/product/product_model.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final ProductModel item = state[index];
            return ListTile(
              title: Text(item.descricao.toString()),
              subtitle: Text(
                  'Quantidade de tipos: ${item.tipoId?.length.toString()}'),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error!),
              TextButton(
                  onPressed: () => controller.findProducts(),
                  child: const Text('Tentar novamente...')),
            ],
          ),
        );
      }),
    );
  }
}
