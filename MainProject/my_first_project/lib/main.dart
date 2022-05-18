import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/home/get_connect/get_connect_bindings.dart';
import 'package:my_first_project/home/get_connect/get_connect_page.dart';
import 'package:my_first_project/home/home_bindings.dart';
import 'package:my_first_project/home/http/repository/http_bindings.dart';

import 'home/home_page.dart';
import 'home/http/http_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          binding: HomeBindings(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => const GetConnectPage(),
              binding: GetConnectBindings(),
            ),
          ],
        )
      ],
    );
  }
}
