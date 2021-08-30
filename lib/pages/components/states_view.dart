import 'package:flutter/material.dart';
import 'package:mobile/controllers/home_controller.dart';

class StateView extends StatefulWidget {
  @override
  StateViewState createState() => StateViewState();
}

class StateViewState extends State<StateView> {
  final controller = HomeController();

  _start() {
    return Container();
  }

  _loading() {
    return Center(child: CircularProgressIndicator());
  }

  _success() {
    return Container(
      child: Text('Sucesso'),
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
        child: Text('Tentar Novamente'),
        onPressed: () {
          controller.start();
        },
      ),
    );
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
        break;
      case HomeState.loading:
        return _loading();
        break;
      case HomeState.success:
        return _success();
        break;
      case HomeState.error:
        return _error();
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateManagement(controller.state.value);
        });
  }
}
