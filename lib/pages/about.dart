import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/pages/partials/drawer.dart';

class About extends StatefulWidget {
  @override
  AboutPage createState() => AboutPage();
}

class AboutPage extends State<About> {
  final ActionsAppBar _actions = ActionsAppBar();

  _card() {
    return Card(
      color: Colors.black45,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          child: Center(
              child: Column(
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30.0,
                                    margin: const EdgeInsets.only(top: 17),
                                    child: Text(
                                        'Sobre Vida Digital Application',
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    '\t\t\tThis application is a property of Vida Digital Lda. However, it was developed by Francisco dos Santos.\n\t\t\tOnly those who work in Vida Digital Lda or are allowed by Vida Digital Lda can use and download this app. Please, if you are not in this condition, uninstall this app immediately.\n\t\t\If you are allowed to use this app, you must know that only those who have the private key can add Users, Services or Repo. Only Vida Digital Lda is able to give permission for managing this app.\n\t\t\tImages, videos or any other asset are properties of Vida Digital Lda and no one is allowed to use in any other situation that Vida Digital Lda does not know or permit.\n\t\t\tAny disobedience to these terms can have judicial punishment and penalties applied by our company.\n\n\n\t\t\tFrancisco dos Santos | Vida Digital Lda',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    )),
              )
            ],
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            actions: [_actions],
            title: Text('Sobre'),
          ),
          drawer: DrawerPartial(),
          body: Container(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/img/bg.jpg',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _card(),
                        Padding(padding: const EdgeInsets.only(bottom: 20.0)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ));
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
            title: Text('Sobre'),
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
