import 'package:flutter/material.dart';
import 'package:flutterapp/globalState.dart';
import 'package:flutterapp/pagina2.dart';
import 'package:flutterapp/pagina3.dart';
import 'package:flutterapp/pagina4.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: ButtonThemeData(buttonColor: Colors.teal)),
      home: ChangeNotifierProvider(
          create: (context) => GlobalStateChangeNotifier(),
          child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _paginaHandler(pagina) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => pagina));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => _paginaHandler(Pagina2()),
              child: Text("Pagina 2"),
            ),
            RaisedButton(
              onPressed: () => _paginaHandler(Pagina3()),
              child: Text("Pagina 3"),
            ),
            RaisedButton(
              onPressed: () => _paginaHandler(Pagina4()),
              child: Text("Pagina 4"),
            ),
          ],
        ),
      )),
    );
  }
}
