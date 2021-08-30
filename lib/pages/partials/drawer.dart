import 'package:flutter/material.dart';
import 'package:mobile/pages/signin.dart';

class DrawerPartial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerPage();
  }
}

class DrawerPage extends State<DrawerPartial> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.asset('assets/img/avatar.png'),
                ),
                accountName: Text('Francisco dos Santos'),
                accountEmail: Text('jp21011990@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Página Inicial'),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Utilizadores'),
              subtitle: Text('Página de Utilizadores'),
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.group_add),
              title: Text('Cadastrar Utilizador'),
              subtitle: Text('Página de Cadastro'),
              onTap: () {
                Navigator.of(context).pushNamed('/register');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Serviços'),
              subtitle: Text('Página de Serviços'),
              onTap: () {
                Navigator.of(context).pushNamed('/job');
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Registrar Serviço'),
              subtitle: Text('Página de Registro'),
              onTap: () {
                Navigator.of(context).pushNamed('/jobs');
              },
            ),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text('Repositório'),
              subtitle: Text('Página de Repositórios'),
              onTap: () {
                Navigator.of(context).pushNamed('/repo');
              },
            ),
            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('Inserir no Repositório'),
              subtitle: Text('Página de Inserção'),
              onTap: () {
                Navigator.of(context).pushNamed('/repos');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Sobre'),
              subtitle: Text('Informações'),
              onTap: () {
                Navigator.of(context).pushNamed('/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back_rounded),
              title: Text('Sair'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
            )
          ],
        ),
      ),
    );
  }
}
