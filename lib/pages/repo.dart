import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import '../models/repo_model.dart';
import 'package:mobile/pages/partials/drawer.dart';

class Repo extends StatefulWidget {
  @override
  RepoPage createState() => RepoPage();
}

class RepoPage extends State<Repo> {
  final ActionsAppBar _actions = ActionsAppBar();

  _card(data, i) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.storage_outlined, color: Colors.white),
                    ),
                    Text('Item ' + (i + 1).toString() + ' do Repositório',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nome',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.name,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tipo',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.type,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Localização',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.location,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ferramentas',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.tools,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Data de Início',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.start,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Data de Témino',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.end,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Link',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('\t\t\t' + data.link,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.blue))
                                ],
                              )
                            ])
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54),
                          bottom: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.white54))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 30.0,
                                    margin: const EdgeInsets.only(top: 17),
                                    child: Text('Detalhes',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white)),
                                  )
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 92.0))
                            ]),
                          ],
                        ),
                      ))),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('\t\t\t' + data.details,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      )),
                ),
              ),
              Container(
                width: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.blueGrey,
                        child: Icon(Icons.edit),
                        onPressed: () {
                          return showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white70,
                                  title: Text('Editar'),
                                  content: Text('Pretende editar?'),
                                  actions: [
                                    ElevatedButton(
                                        child: Text('Editar'),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('/edit_repo');
                                        }),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Sair'))
                                  ],
                                );
                              });
                        }),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0)),
                    FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Icon(Icons.restore_from_trash_outlined),
                        onPressed: () {
                          return showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    backgroundColor: Colors.white70,
                                    content:
                                        Text('Pretende eliminar o serviço?'),
                                    actions: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.deepOrange),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text('Eliminar')),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.deepOrange),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Text('Sair'))
                                    ]);
                              });
                        }),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final reposList = {...dummyDataRepo};
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/repos'),
              icon: Icon(Icons.add, color: Colors.white)),
          _actions
        ],
        title: Text(reposList.length.toString() + ' Links no Repositório'),
      ),
      drawer: DrawerPartial(),
      body: Container(
        child: ListView.builder(
          itemCount: reposList.length,
          itemBuilder: (ctx, i) {
            return Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.brown, Colors.blueGrey]),
                ),
                child: _card(reposList.elementAt(i), i));
          },
        ),
      ),
    );
  }
}
