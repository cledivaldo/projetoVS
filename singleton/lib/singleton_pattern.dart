import 'package:flutter/material.dart';

import 'database/connection.dart';

class SingletonPattern extends StatefulWidget {
  const SingletonPattern({Key? key}) : super(key: key);

  @override
  _SingletonPatternState createState() => _SingletonPatternState();
}

class _SingletonPatternState extends State<SingletonPattern> {
  List<String> nomes = [];

  @override
  void initState() {
    super.initState();
    buscarNomes();
    // int i = 0;
    // while(i < 10) {
    //   // print(SingletonRaiz.instance.id);
    //   var inst = SingletonFactory();
    //   // print(inst.id);
    //   if(i == 0) {
    //     inst.id = 20;
    //   }

    //   i++;
    // }
  }

  Future<void> buscarNomes() async {
    var db = await Connection.instance.db;
    var result = await db.rawQuery('select * from teste');
    setState(() {
      nomes = result.map<String>((e) => e['nome']).toList();
    });
  }

  @override
  void dispose() {
    Connection.instance.closeConnection();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Singleton')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var db = await Connection.instance.db;
          await db
              .rawInsert('insert into teste values("ADicionado pelo float")');
          buscarNomes();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (_, index) => ListTile(
          title: Text(nomes[index]),
        ),
      ),
    );
  }
}
