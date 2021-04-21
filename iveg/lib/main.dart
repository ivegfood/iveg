import 'package:flutter/material.dart';

import 'login.dart';
import 'PrimeiraTelaInicial.dart';
import 'QuartaTelaInicial.dart';
import 'SegundaTelaInicial.dart';
import 'TelaInicialSobre.dart';
import 'TerceiraTelaInicial.dart';
import 'menu/Menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Iveg',

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/inicial',
    routes: {
      '/inicial': (context) => TelaInicial(),
      '/inicial1': (context) => PrimeiraTelaInicial(),
      '/inicial2': (context) => SegundaTelaInicial(),
      '/inicial3': (context) => TerceiraTelaInicial(),
      '/inicial4': (context) => QuartaTelaInicial(),
      '/inicial5': (context) => TelaInicialSobre(),
      '/login': (context) => TelaLogin(),
      '/login2': (context) => TelaLogin2(),
      '/login3': (context) => TelaLogin3(),
      '/Menu': (context) => TelaMenu(),
    },
  ));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(63, 168, 94, 100),
      body: Center(
        child: TextButton(
          child: Text(
            'IVEG',
            style: TextStyle(
              color: Colors.white,
              fontSize: 57,
              fontFamily: 'Goudy Stout',
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/inicial1');
          },
        ),
      ),
    );
  }
}
