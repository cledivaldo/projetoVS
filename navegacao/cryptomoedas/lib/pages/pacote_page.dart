import 'package:cryptomoedas/models/pacotes/pacote.dart';
import 'package:flutter/material.dart';
import '../repo/type_pacotes_cons_api.dart';
//import 'moedas_detalhes_page.dart';

class PacotesPage extends StatefulWidget {
  const PacotesPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PacotesPageState createState() => _PacotesPageState();
}

class _PacotesPageState extends State<PacotesPage> {
  final tabela = PacoteRepository.tabela;
  List<Pacote> selecionadas = [];

  appBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: const Text('Pacotes disponíveis:'),
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              selecionadas = [];
            });
          },
        ),
        title: Text('${selecionadas.length} selecionadas'),
        backgroundColor: Colors.blueGrey[50],
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
        toolbarTextStyle: const TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ).bodyText2,
        titleTextStyle: const TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ).headline6,
      );
    }
  }

  mostrarDetalhes(Pacote pacote) {
    Navigator.push(
      context,
      MaterialPageRoute(
        // builder: (_) => PacoteDetalhesPage(moeda: moeda),
        builder: (context) => widget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int pacote) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            leading: (selecionadas.contains(tabela[pacote]))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 40,
                    child: Image.asset(tabela[pacote].icone),
                  ),
            title: Text(
              tabela[pacote].nome,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Text(
              '',
              //real.format(tabela[moeda].preco),
              style: TextStyle(fontSize: 15),
            ),
            selected: selecionadas.contains(tabela[pacote]),
            selectedTileColor: Colors.indigo[50],
            onLongPress: () {
              setState(() {
                (selecionadas.contains(tabela[pacote]))
                    ? selecionadas.remove(tabela[pacote])
                    : selecionadas.add(tabela[pacote]);
              });
            },
            onTap: () => mostrarDetalhes(tabela[pacote]),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, ___) => const Divider(),
        itemCount: tabela.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text(
                'FAVORITAR',
                style: TextStyle(
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
