import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {
  @override
  _Pagina3State createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  bool isFetching = true;
  bool hasError = false;
  int count = 0;

  @override
  initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    try {
      final dioInstance = Dio();
      final response = await dioInstance
          .get("https://run.mocky.io/v3/01d1fb58-199e-4e52-986b-3a464e15d908");
      setState(() {
        count = response.data['contador'];
        isFetching = false;
      });
    } on DioError catch (dioError) {
      setState(() {
        hasError = true;
        isFetching = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 3"),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: isFetching
                ? CircularProgressIndicator()
                : hasError ? Text("error") : Text("Success fetch $count"),
          ),
        ),
      ),
    );
  }
}
