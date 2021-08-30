import 'package:flutter/material.dart';
import 'package:mobile/pages/signout.dart';

class ActionsAppBar extends StatefulWidget {
  @override
  ActionsState createState() => ActionsState();
}

class ActionsState extends State<ActionsAppBar> {
  _actions(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/home'),
              icon: Icon(Icons.refresh_outlined, color: Colors.white)),
          IconButton(
            icon: Icon(Icons.person_off, color: Colors.white),
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SignOut())),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _actions(context);
  }
}
