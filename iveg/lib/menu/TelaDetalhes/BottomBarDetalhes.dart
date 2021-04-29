import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaDetalhes/acessorios/BotaoVoltar.dart';
import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/telaInicial/BotaoEntrar.dart';

class BottomBarDetalhes extends StatelessWidget {
  const BottomBarDetalhes({
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BotaoEntrar(
            text: 'Adicionar ao carrinho',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaCarrinho()));
            },
          ),
          SizedBox(height: 10),
          BotaoVoltar(
            text: 'Voltar',
            press: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    );
  }
}
