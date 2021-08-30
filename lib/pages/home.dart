import 'dart:core';
import '../models/job_model.dart';
import '../models/repo_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/drawer.dart';
import 'package:mobile/pages/partials/actions.dart';

class Home extends StatefulWidget {
  @override
  HomeApp createState() => HomeApp();
}

class HomeApp extends State<Home> {
  final ActionsAppBar _actions = ActionsAppBar();

  _card() {
    return Card(
        color: Colors.transparent,
        child: Column(
          children: [Image.asset('assets/img/bg.jpg', fit: BoxFit.cover)],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final jobsList = {...dummyData};
    final reposList = {...dummyDataRepo};

    try {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            actions: [_actions],
            title: Text('Home'),
          ),
          drawer: DrawerPartial(),
          body: Container(
              decoration: BoxDecoration(color: Colors.black87),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/img/bg.gif', fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Container(
                            width: double.infinity,
                            child: _card(),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 60.0, horizontal: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color: Colors.white30)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Row(children: [
                                          Card(
                                              color: Colors.blue,
                                              child: Icon(
                                                  Icons.arrow_upward_outlined,
                                                  size: 50)),
                                          SizedBox(
                                              child: Column(children: [
                                            Text(
                                                jobsList.length.toString() +
                                                    ' Itens',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white)),
                                            Text('Serviços Agendados',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white))
                                          ]))
                                        ])),
                                        Container(
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0)),
                                        ),
                                        Container(
                                            child: Row(children: [
                                          Card(
                                              color: Colors.deepOrange,
                                              child: Icon(Icons.star_outline,
                                                  size: 50)),
                                          SizedBox(
                                              child: Column(children: [
                                            Text(
                                                reposList.length.toString() +
                                                    ' Itens',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white)),
                                            Text('Repositório Técnico',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white))
                                          ]))
                                        ])),
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                          Text('Acesso Rápido',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                TextButton(
                                    child: Card(
                                      color: Colors.transparent,
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20.0, horizontal: 40),
                                          child: Icon(
                                              Icons
                                                  .supervised_user_circle_outlined,
                                              color: Colors.white,
                                              size: 60)),
                                    ),
                                    onPressed: () => Navigator.of(context)
                                        .pushNamed('/profile')),
                                TextButton(
                                    child: Card(
                                      color: Colors.blueGrey,
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 40.0, horizontal: 52),
                                          child: Icon(
                                              Icons.supervisor_account_rounded,
                                              color: Colors.white)),
                                    ),
                                    onPressed: () => Navigator.of(context)
                                        .pushNamed('/register')),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                  child: Card(
                                    color: Colors.transparent,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0, horizontal: 40),
                                        child: Icon(
                                            Icons.perm_contact_calendar_rounded,
                                            color: Colors.white,
                                            size: 60)),
                                  ),
                                  onPressed: () =>
                                      Navigator.of(context).pushNamed('/job')),
                              TextButton(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 40.0, horizontal: 52),
                                        child: Icon(
                                            Icons.electrical_services_rounded,
                                            color: Colors.white)),
                                  ),
                                  onPressed: () =>
                                      Navigator.of(context).pushNamed('/jobs')),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                  child: Card(
                                    color: Colors.transparent,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0, horizontal: 40),
                                        child: Icon(Icons.storage_rounded,
                                            color: Colors.white, size: 60)),
                                  ),
                                  onPressed: () =>
                                      Navigator.of(context).pushNamed('/repo')),
                              TextButton(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 40.0, horizontal: 52),
                                        child: Icon(
                                            Icons.shopping_basket_rounded,
                                            color: Colors.white)),
                                  ),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed('/repos')),
                            ],
                          )
                        ])),
                  )
                ],
              )));
    } catch (e) {
      print(e);
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            actions: [
              GestureDetector(
                  child: Icon(Icons.refresh_outlined, color: Colors.white),
                  onTap: () {}),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              GestureDetector(
                  child: Icon(Icons.person_off, color: Colors.white),
                  onTap: () =>
                      Navigator.of(context).pushReplacementNamed('/signout')),
              Padding(padding: EdgeInsets.only(right: 10.0)),
            ],
            title: Text('Home'),
          ),
          drawer: DrawerPartial(),
          body: Container(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
                'Houve um erro ao carregar esta página. Por favor, contacte a equipe técnica!'),
          ))));
    }
  }
}
