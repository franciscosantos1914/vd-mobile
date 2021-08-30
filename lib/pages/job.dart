import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/services/http.dart';
import 'package:mobile/pages/partials/drawer.dart';

class Job extends StatefulWidget {
  @override
  JobPage createState() => JobPage();
}

class JobPage extends State<Job> {
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
                      child: Icon(Icons.settings, color: Colors.white),
                    ),
                    Text('Serviço ' + (i + 1).toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Referência',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white)),
                                Text('Referência do Serviço',
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.white))
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 75.0)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(data.reference,
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white)),
                                Text('Serviço',
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.white))
                              ],
                            )
                          ])
                        ],
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Nome do Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.name,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
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
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Tipo de Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 86.0)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.type,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
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
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Localização de Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white)),
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 92.0)),
                            ]),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.location,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              ),
                            )
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Ferramentas para o Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 92.0))
                            ]),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.tools,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white))
                                ],
                              ),
                            )
                          ],
                        ),
                      ))),
              Container(
                height: 10.0,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Início do Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.start,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
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
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Fim do Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.end,
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
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
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
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
                                  Text('Detalhes',
                                      style: TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                  Text('Detalhes do Serviço',
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.white))
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
                                              .pushReplacementNamed('/edit_job',
                                                  arguments: data);
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
    final http = Http();
    final jobsList = http.getJobs();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/jobs'),
              icon: Icon(Icons.add, color: Colors.white)),
          _actions
        ],
        title: Text(jobsList.job.length.toString() + ' Serviços'),
      ),
      drawer: DrawerPartial(),
      body: jobsList.status == true
          ? Container(
              child: ListView.builder(
                itemCount: jobsList.job.length,
                itemBuilder: (ctx, i) {
                  return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blueGrey, Colors.brown]),
                      ),
                      child: _card(jobsList.job.elementAt(i), i));
                },
              ),
            )
          : Container(
              child: ElevatedButton(
              child: Text('Erro ao listar a serviços.'),
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              onPressed: () {},
            )),
    );
  }
}
