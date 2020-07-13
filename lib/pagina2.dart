import 'package:flutter/material.dart';
import 'package:flutterapp/globalState.dart';
import 'package:provider/provider.dart';

class Pagina2 extends StatefulWidget {
  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  bool showPlaceholder = false;

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  child: Text("Mostrar nuevo placeholder"),
                  onPressed: () {},
                ),
                if (showPlaceholder)
                  Placeholder(
                    color: snapshot.backgroundColor,
                  )
              ],
            ),
          ),
        );
      }),
    );
  }
}
