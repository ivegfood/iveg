import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iveg/Perfil/TelaPerfil.dart';
import 'package:iveg/TelaFinal/TelaFinal.dart';
import 'package:iveg/login/BodyLogin.dart';
import 'package:iveg/login/entrar.dart';
import 'package:iveg/login/entrarPJ.dart';
import 'package:iveg/menu/TelaCupons/TelaCupons.dart';
import 'package:iveg/menu/TelaDetalhes/TelaDetalhes.dart';
import 'package:iveg/menu/TelaProdutoPet/TelaPet.dart';
import 'package:iveg/menu/cadastroprod.dart';
import 'package:iveg/painelAdm/RemoveProdutos/TelaRemover.dart';
import 'package:iveg/painelAdm/TelaPainelAdm.dart';
import 'package:iveg/pesquisar/TelaPesquisa.dart';
import 'package:iveg/telaInicial/TelaInicialv2.dart';
import 'login.dart';
import 'telaInicialsobre.dart';
import 'package:iveg/menu/menu.dart';
import 'pj/pj2.dart';
import 'pj/pj3.dart';
import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/produtoh.dart';
import 'package:iveg/menu/fidelidades.dart';
import 'package:iveg/pagamento/adicionarcartao.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Veg',

    //ROTAS DE NAVEGAÇÃO
    initialRoute: '/inicial',
    routes: {
      '/inicial': (context) => TelaInicial(),
      '/inicial1': (context) => TelaInicialv2(),
      '/sobre': (context) => TelaInicialSobre(),
      '/criarconta': (context) => PrimeiraTelaInicio(),
      '/login': (context) => TelaLogin(),
      '/login3': (context) => TelaLogin3(),
      '/bodylogin': (context) => BodyLogin(),
      '/entrar': (context) => TelaEntrar(),
      '/entrarpj': (context) => TelaEntrarPJ(),
      '/paineladm': (context) => TelaPainelAdm(),
      '/menu': (context) => TelaMenu(),
      '/pj2': (context) => TelaPj2(),
      '/pj3': (context) => TelaPj3(),
      '/carrinho': (context) => TelaCarrinho(),
      '/produtoh': (context) => TelaProdutoh(),
      '/cadastroprod': (context) => TelaCadastro(),
      '/removeprod': (context) => TelaRemover(),
      '/telaPet': (context) => TelaPet(),
      '/adicionarcartao': (context) => AdicionarCartao(),
      '/fidelidades': (context) => Fidelidade(),
      '/pesquisa': (context) => TelaPesquisav2(),
      '/detalhes': (context) => TelaDetalhes(),
      '/cupons': (context) => TelaCupons(),
      '/perfil': (context) => TelaPerfil(),
      '/final' : (context) => TelaFinal(),
    },
  ));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((_) => Navigator.pushNamed(context, '/inicial1'));
    return Scaffold(
        backgroundColor: Colors.green[400],
        body: Center(
          child: Image.network(
            'assets/imagens/veg_logo.png',
            height: 80,
          ),
        ));
  }
}
