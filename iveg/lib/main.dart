import 'package:flutter/material.dart';
import 'package:iveg/pesquisar/TelaPesquisa.dart';
import 'package:iveg/telaInicial/TelaInicialv2.dart';

import 'login.dart';
import 'telaInicialsobre.dart';
import 'package:iveg/menu/menu.dart';
import 'pj/pj1.dart';
import 'pj/pj2.dart';
import 'pj/pj3.dart';
import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/produtoh.dart';
import 'package:iveg/menu/produtop.dart';
import 'menu/visualizacupom.dart';
import 'menu/fidelidades.dart';
import 'pagamento/adicionarcartao.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Iveg',

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/inicial',
    routes: {
      '/inicial': (context) => TelaInicial(),
      '/inicial1': (context) => TelaInicialv2(),
      '/inicial5': (context) => TelaInicialSobre(),
      '/criarconta': (context) => PrimeiraTelaInicio(),
      '/login': (context) => TelaLogin(),
      '/login2': (context) => TelaLogin2(),
      '/login3': (context) => TelaLogin3(),
      '/menu': (context) => TelaMenu(),
      '/pj1': (context) => TelaPj1(),
      '/pj2': (context) => TelaPj2(),
      '/pj3': (context) => TelaPj3(),
      '/carrinho': (context) => TelaCarrinho(),
      '/produtoh': (context) => TelaProdutoH(),
      '/produtop': (context) => TelaProdutoP(),
      '/adicionarcartao': (context) => AdicionarCartao(),
      '/visualizacupom': (context) => VisualizaCupom(),
      '/fidelidades': (context) => Fidelidade(),
      '/pesquisa' : (context) => TelaPesquisav2(),
    },
  ));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
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
