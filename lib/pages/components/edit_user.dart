import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/pages/partials/drawer.dart';

class EditUser extends StatefulWidget {
  @override
  EditUserState createState() => EditUserState();
}

class EditUserState extends State<EditUser> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [_actions],
        title: Text('Editar Utilizador'),
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
              child: Center(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.edit, color: Colors.white),
                          ),
                          Text('Editar Utilizador',
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
                                          Text('Email',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text('jp21011990@gmail.com',
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
                                                return _alertDialog('Email',
                                                    'jp21011990@gmail.com');
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
                                          Text('Nome do Usuário',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text('Francisco dos Santos',
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
                                                    'Nome do Usuário',
                                                    'Francisco dos Santos');
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
                                          Text('Nova senha',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text('********',
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
                                                    'Senha', '');
                                              });
                                        }),
                                  ]),
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
                                      Text('Usuário atualizado com sucesso!'),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ),
        ),
      ]),
    );
  }
}
