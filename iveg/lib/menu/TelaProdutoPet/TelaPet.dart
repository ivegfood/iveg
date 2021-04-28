import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaProdutoPet/BodyTelaPet.dart';
import 'package:iveg/telaInicial/BotaoEntrar.dart';

class TelaPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: appBarTelaPet(context),
      body: BodyTelaPet(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: BotaoEntrar(
            text: 'Voltar',
            press: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  AppBar appBarTelaPet(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      title: Center(
        child: Column(
          children: [
            Text('Pet LOVE',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('Endereço da loja, 123, Jd Maria',
                style: TextStyle(color: Colors.white, fontSize: 10))
          ],
        ),
      ),
    );
  }
}
