import 'package:cryptomoedas/pages/pacote_page.dart';
import 'package:flutter/material.dart';

//import 'moedas_page.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formas de Requisições de Api',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const PacotesPage(),
    );
  }
}
