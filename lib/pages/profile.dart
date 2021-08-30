import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import '../models/user_model.dart';
import 'package:mobile/pages/partials/drawer.dart';

class Profile extends StatefulWidget {
  @override
  ProfilePage createState() => ProfilePage();
}

class ProfilePage extends State<Profile> {
  final ActionsAppBar _actions = ActionsAppBar();
  final usersList = {...dummyData};

  _card(data) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          child: Center(
              child: Column(
            children: [
              Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.supervised_user_circle_rounded,
                        size: 100.0, color: Colors.blueGrey)),
              ),
              Center(
                child: Text('Vida Digital',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Fira Code, monospace')),
              ),
              Center(
                child: Text(data.username,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 55.0),
                            child: Column(
                              children: [
                                Text('Utilizador do VDApp',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Text('Vida Digital Lda',
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: Colors.white30,
                          style: BorderStyle.solid)),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Email',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white)),
                                    Text('Seu email',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(data.email,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white)),
                                    Text('Utilizador',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white))
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
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Usuário',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white)),
                                    Text('Seu nome de usuário',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(data.username,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white)),
                                    Text('Utilizador',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white))
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
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Senha',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white)),
                                      Text('Sua senha',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white))
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 92.0)),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(data.password,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white)),
                                      Text('Utilizador',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white))
                                    ],
                                  )
                                ]),
                          )
                        ],
                      ))),
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
                                              .pushNamed('/edit_user');
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
                                        Text('Pretende eliminar o utilizador?'),
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
    final usersList = {...dummyData};
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/register'),
              icon: Icon(Icons.add, color: Colors.white)),
          _actions
        ],
        title: Text('Perfil'),
      ),
      drawer: DrawerPartial(),
      body: Container(
        child: ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (ctx, i) {
            return Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.blueGrey, Colors.brown]),
                ),
                child: _card(usersList.elementAt(i)));
          },
        ),
      ),
    );
  }
}
