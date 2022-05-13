import 'package:agenda_crud/app/view/contact_frm.dart';
import 'package:flutter/material.dart';

import '../my_app.dart';

class ContactList extends StatelessWidget {
  ContactList({Key? key}) : super(key: key);
  final lista = [
    {
      'nome': 'Cledivaldo',
      'fone': '(61)9 8407-7735',
      'avatar':
          'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-3-avatar-2754579_120516.png',
      'group': 'C'
    },
    {
      'nome': 'Keval J. A.',
      'fone': '(61)9 8407-7878',
      'avatar':
          'https://oimparcial.com.br/app/uploads/2020/10/Screen-Shot-2020-05-19-at-7.17.13-AM-1024x788.jpg',
      'group': 'K'
    },
    {
      'nome': 'Andressa Lorrane',
      'fone': '(61)9 8485-1899',
      'avatar':
          'https://yt3.ggpht.com/luZJODmjxHNUISolnqN9ieren-j6UOg2OuK5unG8bRHiBsPeqQWXnKNNepwdithrBmiUF059SqI=s176-c-k-c0x00ffffff-no-rj',
      'group': 'A'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.separated(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          final contato = lista[i];
          final avatar = CircleAvatar(
            backgroundImage: NetworkImage(contato["avatar"].toString()),
          );

          return ListTile(
            leading: avatar,
            title: Text(contato["nome"].toString()),
            subtitle: Text(contato["fone"].toString()),
            trailing: Container(
              width: 100,
              child: Row(children: [
                const IconButton(onPressed: null, icon: Icon(Icons.edit)),
                const IconButton(onPressed: null, icon: Icon(Icons.delete))
              ]),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
