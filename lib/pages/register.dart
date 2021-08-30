import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/pages/partials/drawer.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPage();
  }
}

class RegisterPage extends State<Register> {
  final ActionsAppBar _actions = ActionsAppBar();
  final String src = "assets/img";
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/profile'),
              icon: Icon(Icons.grid_3x3, color: Colors.white)),
          _actions
        ],
        title: Text('Cadastro'),
      ),
      drawer: DrawerPartial(),
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
                      //Username Widget
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
                              labelText: 'Nome',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.account_circle_outlined,
                                  color: Colors.white54),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Nome Inválido';
                              }
                              return null;
                            },
                            onSaved: (value) => _formData['name'] = value,
                          ),
                        ),
                      ),

                      //Email Widget
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 20),
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
                                return 'Email Inválido';
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
                                return 'Senha Inválida';
                              }
                              return null;
                            },
                            onSaved: (value) => _formData['password'] = value,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 80.0,
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
                                  return showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                            backgroundColor: Colors.white70,
                                            title: Text('Cadastro'),
                                            content: Text(
                                                'Cadastro salvo com sucesso!'));
                                      });
                                });
                              }
                            },
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Book, monospace'),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
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
