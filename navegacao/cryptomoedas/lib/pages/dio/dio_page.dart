import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioPage extends GetView<DioController> {
   
   const DioPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('DioPage'),),
           body: Container(),
       );
  }
}