import 'package:flutter/material.dart';
import 'package:iveg/pesquisar/BodyPesquisa.dart';
import 'package:iveg/telaInicial/BotaoEntrar.dart';

class TelaPesquisav2 extends StatefulWidget {
  @override
  _TelaPesquisav2State createState() => _TelaPesquisav2State();
}

class _TelaPesquisav2State extends State<TelaPesquisav2> {
  var txtPesquisa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green,
      body: BodyPesquisar(txtPesquisa: txtPesquisa),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: BotaoEntrar(
          text: 'Voltar',
          press: () {
            Navigator.pop(context);
          },
        ),
      ),
    ));
  }
}
