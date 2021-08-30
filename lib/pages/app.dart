import 'package:flutter/material.dart';
import 'package:mobile/pages/components/edit_job.dart';
import 'package:mobile/pages/components/edit_repo.dart';
import 'package:mobile/pages/components/edit_user.dart';
import 'package:mobile/pages/home.dart';
import 'package:mobile/pages/job.dart';
import 'package:mobile/pages/about.dart';
import 'package:mobile/pages/jobs.dart';
import 'package:mobile/pages/repo.dart';
import 'package:mobile/pages/profile.dart';
import 'package:mobile/pages/register.dart';
import 'package:mobile/pages/repos.dart';
import 'package:mobile/pages/signin.dart';
import 'package:mobile/pages/signout.dart';
import 'package:mobile/pages/welcome.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppPage();
  }
}

class MyAppPage extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/signin': (context) => SignIn(),
        '/register': (context) => Register(),
        '/signout': (context) => SignOut(),
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/job': (context) => Job(),
        '/jobs': (context) => Jobs(),
        '/repo': (context) => Repo(),
        '/repos': (context) => Repos(),
        '/about': (context) => About(),
        '/edit_job': (context) => EditJob(),
        '/edit_repo': (context) => EditRepo(),
        '/edit_user': (context) => EditUser()
      },
    );
  }
}
