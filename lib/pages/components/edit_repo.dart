import 'package:flutter/material.dart';
import 'package:mobile/pages/partials/actions.dart';
import 'package:mobile/pages/partials/drawer.dart';

class EditRepo extends StatefulWidget {
  @override
  EditRepoState createState() => EditRepoState();
}

class EditRepoState extends State<EditRepo> {
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
        title: Text('Editar Links'),
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.edit, color: Colors.white),
                          ),
                          Text('Editar Link 1',
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
                                          Text('Nome',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text('Instalação de Rede Estruturada',
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
                                            return _alertDialog('Nome',
                                                'Instalação de Rede Estruturada');
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
                                          Text('Redes',
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
                                                'Tipo', 'Redes');
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
                                          Text('Zango 0, Rua C, Casa nº 15',
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
                                            return _alertDialog('Localização',
                                                'Zango 0, Rua C, Casa nº 15');
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
                                          Text(
                                              'Mala 15, UPS, Máquina de Soldar',
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
                                                    'Ferramentas',
                                                    'Mala 15, UPS, Máquina de Soldar');
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
                                          Text('17 de Julho de 2021',
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
                                                    '17 de Julho de 2021');
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
                                          Text('17 de Julho de 2021',
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
                                                    '17 de Julho de 2021');
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
                                          Text('Link',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white)),
                                          Text('https://vidadigital.co.ao',
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
                                                return _alertDialog('Link',
                                                    'https://vidadigital.co.ao');
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
                                                return _alertDialog('Detalhes',
                                                    'Faça uma lista de tecnologias recentes, médias e antigas baseada no mercado atual. Mapeie-as em uma folha da esquerda para a direita. Na esquerda, coloque as tecnologias recentes, e na direita, as que estão próximas do fila. \n\t\t\tForce a si mesmo para encontrar a maior quantidade possível de tecnologias. Seja o mais granular possível sobre onde as tecnologias estão quando comparadas umas com as outras.');
                                              });
                                        }),
                                  ]),
                              Card(
                                color: Colors.transparent,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        '\t\t\tFaça uma lista de tecnologias recentes, médias e antigas baseada no mercado atual. Mapeie-as em uma folha da esquerda para a direita. Na esquerda, coloque as tecnologias recentes, e na direita, as que estão próximas do fila. \n\t\t\tForce a si mesmo para encontrar a maior quantidade possível de tecnologias. Seja o mais granular possível sobre onde as tecnologias estão quando comparadas umas com as outras.',
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
                                  content: Text('Link atualizado com sucesso!'),
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
