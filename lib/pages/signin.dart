import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile/pages/home.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInPage();
  }
}

class SignInPage extends State<SignIn> {
  final String src = "assets/img";
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            child: Image.asset('$src/bg.gif', fit: BoxFit.cover),
          ),
          Container(
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Text(
                          'Entrar na sua conta',
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
                              top: 30, bottom: 5, left: 20, right: 20),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Fira Code, monospace'),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.email_outlined,
                                  color: Colors.white54),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email inválido';
                              }
                              return null;
                            },
                            onSaved: (value) => _formData['email'] = value,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Fira Code, monospace'),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Senha',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.account_circle,
                                  color: Colors.white54),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Senha inválida';
                              }
                              return null;
                            },
                            onSaved: (value) => _formData['password'] = value,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              final validateForm =
                                  _form.currentState.validate();
                              if (validateForm) {
                                _form.currentState.save();
                                Timer(Duration(milliseconds: 2000), () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                });
                                return showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: Center(
                                              child: CircularProgressIndicator(
                                            color: Colors.lightBlue,
                                          )));
                                    });
                              } else {
                                return showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: Row(
                                          children: [
                                            Icon(Icons.error_outline_rounded,
                                                color: Colors.red),
                                            Text(' Email e senha erradas!',
                                                style: TextStyle(
                                                    color: Colors.black87)),
                                          ],
                                        ),
                                      );
                                    });
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Book, monospace'),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 20),
                                shadowColor: Colors.black54),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
