// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/Perfil/TelaPerfil.dart';
// import 'package:iveg/menu/TelaCupons/ClasseCupom.dart';
import 'package:iveg/menu/TelaCupons/TelaCupons.dart';
import 'package:iveg/menu/TelaDetalhes/TelaDetalhes.dart';
import 'package:iveg/menu/TelaProdutoPet/TelaPet.dart';
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
// import 'package:iveg/menu/produtop.dart';
// import 'menu/visualizacupom.dart';
import 'package:iveg/menu/fidelidades.dart';
import 'package:iveg/pagamento/adicionarcartao.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Veg',

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/sobre',
    routes: {
      '/inicial': (context) => TelaInicial(),
      '/inicial1': (context) => TelaInicialv2(),
      '/sobre': (context) => TelaInicialSobre(),
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
      '/telaPet': (context) => TelaPet(),
      '/adicionarcartao': (context) => AdicionarCartao(),
      '/fidelidades': (context) => Fidelidade(),
      '/pesquisa': (context) => TelaPesquisav2(),
      '/detalhes': (context) => TelaDetalhes(),
      '/cupons': (context) => TelaCupons(),
      '/perfil': (context) => TelaPerfil(),
    },
  ));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,            
            children: [GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/inicial1');
              },
              child: Image.network(
                'assets/imagens/veg_logo.png',
                height: 80,
            ),
          )
        ])
        )
    );
  }
}
