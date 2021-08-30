import 'package:flutter/material.dart';

class SignOut extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignOutPage();
  }
}

class SignOutPage extends State<SignOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            child: Image.asset('assets/img/bg.gif', fit: BoxFit.cover),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      'Você saiu da sua conta',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Fira Code, monospace',
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 5, left: 20, right: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/signin');
                        },
                        child: Text(
                          'Fazer login',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Book, monospace'),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            shadowColor: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
