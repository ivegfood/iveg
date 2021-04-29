import 'package:flutter/material.dart';
import 'package:iveg/telaInicial/BotaoEntrar.dart';

class BottomBarPet extends StatelessWidget {
  const BottomBarPet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}