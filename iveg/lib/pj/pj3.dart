import 'package:flutter/material.dart';

class TelaPj3 extends StatefulWidget {
  @override
  _TelaPj3State createState() => _TelaPj3State();
}

class _TelaPj3State extends State<TelaPj3> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Goudy Stout',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(40),
        // child: Form(),  Casatro de produtos
      ),
    );
  }
}
