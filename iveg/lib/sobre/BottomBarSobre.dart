import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaDetalhes/acessorios/BotaoVoltar.dart';

class BottomBarSobre extends StatelessWidget {
  const BottomBarSobre({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: BotaoVoltar(
          text: 'Voltar',
          press: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
