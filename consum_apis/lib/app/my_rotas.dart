import 'package:consum_apis/app/view/cons_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/http_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(getPages: [
      GetPage(name: '/', page: () => const ConsumindoApi(), children: [
        GetPage(
          name: '/http',
          page: () => const HttpPage(),
        ),
      ]),
    ]);
  }
}
