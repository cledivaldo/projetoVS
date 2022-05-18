import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindinds(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => GetConnectPage(),
              binding: GetConnectBindings(),
            ),
             GetPage(
              name: '/dio',
              page: () => DioPage(),
              binding: DioBindings(),
            )
          ],
        )
      ],
    );
  }
}