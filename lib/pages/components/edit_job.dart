import 'package:flutter/material.dart';
import 'package:mobile/models/job_model.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/pages/partials/drawer.dart';

class EditJob extends StatefulWidget {
  @override
  EditJobState createState() => EditJobState();
}

class EditJobState extends State<EditJob> {
  final ActionsAppBar _actions = ActionsAppBar();

  _alertDialog(String title, String content) {
    return AlertDialog(
        title: Text(title),
        insetPadding: const EdgeInsets.all(15.0),
        content: TextField(
          controller: TextEditingController(text: content),
          style: TextStyle(
              color: Colors.black38, fontFamily: 'Fira Code, monospace'),
          cursorColor: Colors.black12,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12)),
          ),
          onChanged: (password) {
            print(password);
          },
        ),
        actions: [
          TextButton(
              child: Text('Salvar'),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          TextButton(
              child: Text('Sair'),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ]);
  }

  @override
  Widget build(BuildContext context) {
    final JobModel data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [_actions],
        title: Text('Editar Serviços'),
      ),
      drawer: DrawerPartial(),
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/img/bg1.gif',
          fit: BoxFit.cover,
        ),
        Card(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.edit, color: Colors.white),
                          ),
                          Text('Editar Serviço',
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
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Referência',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.reference,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(Icons.edit, color: Colors.white),
                                      onPressed: () => showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return _alertDialog(
                                                'Referência', data.reference);
                                          }),
                                    ),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Nome',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.name,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(Icons.edit, color: Colors.white),
                                      onPressed: () => showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return _alertDialog(
                                                'Nome', data.name);
                                          }),
                                    ),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Tipo',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.type,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(Icons.edit, color: Colors.white),
                                      onPressed: () => showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return _alertDialog(
                                                'Tipo', data.type);
                                          }),
                                    ),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Localização',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.location,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(Icons.edit, color: Colors.white),
                                      onPressed: () => showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return _alertDialog(
                                                'Localização', data.location);
                                          }),
                                    ),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Ferramentas',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.tools,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                        child: Icon(Icons.edit,
                                            color: Colors.white),
                                        onTap: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return _alertDialog(
                                                    'Ferramentas', data.tools);
                                              });
                                        }),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Data de Início',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.start,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                        child: Icon(Icons.edit,
                                            color: Colors.white),
                                        onTap: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return _alertDialog(
                                                    'Data de Início',
                                                    data.start);
                                              });
                                        }),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Data de Término',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text(data.end,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                        child: Icon(Icons.edit,
                                            color: Colors.white),
                                        onTap: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return _alertDialog(
                                                    'Data de Término',
                                                    data.end);
                                              });
                                        }),
                                  ]),
                            ],
                          ),
                        )),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1,
                                    color: Colors.white30,
                                    style: BorderStyle.solid))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Detalhes',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                        child: Icon(Icons.edit,
                                            color: Colors.white),
                                        onTap: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return _alertDialog(
                                                    'Detalhes', data.details);
                                              });
                                        }),
                                  ]),
                              Card(
                                color: Colors.transparent,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('\t\t\t' + data.details,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white))),
                              ),
                            ],
                          ),
                        )),
                    Container(
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Atualizar '),
                              Icon(Icons.send),
                            ],
                          ),
                        ),
                        onPressed: () {
                          return showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content:
                                      Text('Serviço atualizado com sucesso!'),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
