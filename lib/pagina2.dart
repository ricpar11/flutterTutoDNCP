import 'package:flutter/material.dart';
import 'package:flutterapp/globalState.dart';
import 'package:provider/provider.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalStateChangeNotifier(),
      child:
          Consumer<GlobalStateChangeNotifier>(builder: (context, snapshot, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Pagina 2"),
            backgroundColor: snapshot.backgroundColor,
          ),
          body: SafeArea(
            child: Center(
              child: RaisedButton(
                child: Text("Cuerpo de la pagina 2"),
                onPressed: () {
                  snapshot.backgroundColor = Colors.red;
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
