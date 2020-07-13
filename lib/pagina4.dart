import 'package:flutter/material.dart';

class Pagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 4"),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            30,
            (index) => Card(
              child: ListTile(
                title: Text("Card numero $index"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
