import 'package:flutter/material.dart';
import 'sobre/sobre.dart';
import 'login/login.dart';
import 'menu/menu.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iVeg',
      home: TelaSobre(),
      theme: ThemeData(
          primaryColor: Colors.green[500],
          backgroundColor: Colors.grey[100],
          fontFamily: 'Open Sans',
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 22, color: Colors.white, fontStyle: FontStyle.italic),
            headline2: TextStyle(fontSize: 18, color: Colors.green[300]),
          )),
      routes: {
        '/login': (context) => TelaLogin(),
        '/login2': (context) => TelaLogin2(),
        '/login3': (context) => TelaLogin3(),
        '/menu': (context) => TelaMenu(),        
      }
    )
  );
}
