import 'package:agenda_crud/app/database/sqlite/script.dart';
import 'package:agenda_crud/app/view/contact_frm.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../my_app.dart';

class ContactList extends StatelessWidget {
  ContactList({Key? key}) : super(key: key);
  final lista = [
    {
      'nome': 'Cledivaldo',
      'fone': '(61)9 8407-7735',
      'url_avatar':
          'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-3-avatar-2754579_120516.png',
      'group': 'C'
    },
    {
      'nome': 'Keval J. A.',
      'fone': '(61)9 8407-7878',
      'url_avatar':
          'https://oimparcial.com.br/app/uploads/2020/10/Screen-Shot-2020-05-19-at-7.17.13-AM-1024x788.jpg',
      'group': 'K'
    },
    {
      'nome': 'Andressa Lorrane',
      'fone': '(61)9 8485-1899',
      'url_avatar':
          'https://yt3.ggpht.com/luZJODmjxHNUISolnqN9ieren-j6UOg2OuK5unG8bRHiBsPeqQWXnKNNepwdithrBmiUF059SqI=s176-c-k-c0x00ffffff-no-rj',
      'group': 'A'
    },
  ];

  Future<List<Map<String, dynamic>>> _getCliente() async {
    String path = join(await getDatabasesPath(), 'banco');
    Database db = await openDatabase(path, version: 1, onCreate: (db, v) {
      print(path);
      db.execute(createTable);
      db.execute(insert1);
      db.execute(insert2);
      db.execute(insert3);
    });
    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getCliente(),
      builder: (context, futuro) {
        if (futuro.hasData) {
          var lista = futuro.data;
          return const Scaffold();
          /*return Scaffold(
            appBar: AppBar(
              title: const Text("Lista de Contatos:"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyApp.contactFrm);
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
            body: ListView.builder(
              itemCount: 3, //lista.length,
              itemBuilder: (context, i) {
                final contato = lista[i];
                final avatar = CircleAvatar(
                  backgroundImage:
                      NetworkImage(contato["url_avatar"].toString()),
                );
                return ListTile(
                  leading: avatar,
                  title: Text(contato["nome"].toString()),
                  subtitle: Text(contato["fone"].toString()),
                  trailing: Container(
                    width: 100,
                    child: Row(children: [
                      const IconButton(onPressed: null, icon: Icon(Icons.edit)),
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.delete))
                    ]),
                  ),
                );
              },
            ),
          );*/
        } else {
          return const Scaffold();
        }
      },
    );
  }
}
