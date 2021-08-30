import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String src = "assets/img";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        SizedBox(
          child: Image.asset(
            'assets/img/bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/signin');
                    },
                    label: Text(
                      'Entrar',
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'Book, monospace'),
                    ),
                    icon: Icon(Icons.arrow_forward),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        shadowColor: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
