import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/pages/partials/drawer.dart';

class Jobs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return JobsPage();
  }
}

class JobsPage extends State<Jobs> {
  final String src = "assets/img";
  String _selectedJob = 'Selecione o tipo de serviço';
  final ActionsAppBar _actions = ActionsAppBar();
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: [
            IconButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('/job'),
                icon: Icon(Icons.grid_3x3, color: Colors.white)),
            _actions
          ],
          title: Text('Registrar Serviços'),
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
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 5, left: 20, right: 20),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Fira Code, monospace'),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Referência',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.align_horizontal_left,
                                    color: Colors.white54),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Referência Inválida';
                                }
                                return null;
                              },
                              onSaved: (value) =>
                                  _formData['reference'] = value,
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
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Nome',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.account_circle,
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 5, left: 20, right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: DropdownButton(
                                    dropdownColor: Colors.black38,
                                    hint: Text(_selectedJob,
                                        style: TextStyle(color: Colors.white)),
                                    focusColor: Colors.white,
                                    style: TextStyle(color: Colors.white),
                                    isExpanded: true,
                                    value: _selectedJob,
                                    onChanged: (newVal) {
                                      setState(() {
                                        _selectedJob = newVal;
                                        _formData['type'] = newVal;
                                      });
                                    },
                                    items: [
                                      'Selecione o tipo de serviço',
                                      'Instalação de Redes',
                                      'Instalação de Internet',
                                      'Cercas Eléctricas',
                                      'Sistema de Videovigilância',
                                      'Software de Gestão Comercial',
                                      'Consultoria XD Gestão Comercial',
                                      'Desenvolvimento de Softwares',
                                      'Montagem de Motor de Portões Automáticos',
                                      'Instalação de Controlo Biométrico'
                                    ].map((v) {
                                      return DropdownMenuItem<String>(
                                        child: Text(v),
                                        value: v,
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Fira Code, monospace'),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.streetAddress,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Localização',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.add_location_alt,
                                    color: Colors.white54),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Localização Inválida';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['location'] = value,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Fira Code, monospace'),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Ferramentas',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.admin_panel_settings,
                                    color: Colors.white54),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Preencha correctamente este campo';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['tools'] = value,
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
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Data de Início',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.app_registration,
                                    color: Colors.white54),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Data Inválida';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['start'] = value,
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
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Data de Término',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(Icons.apps_rounded,
                                    color: Colors.white54),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Data Inválida';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['end'] = value,
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
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Detalhes',
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon:
                                    Icon(Icons.settings, color: Colors.white54),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Detalhes Inválidos';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['details'] = value,
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
                                              title: Text('Registro'),
                                              content: Text(
                                                  'Registro salvo com sucesso!'));
                                        });
                                  });
                                }
                              },
                              child: Text(
                                'Registrar',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Book, monospace'),
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
    } catch (e) {
      print(e);
      return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            actions: [_actions],
            title: Text('Registrar Serviços'),
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
