import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
//comentario
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guia de acesso')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/http'),
              child: const Text(
                'HTTP',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'DIO',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getconnect'),
              child: const Text(
                'GetConnection',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
