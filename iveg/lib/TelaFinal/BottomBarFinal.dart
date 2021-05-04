import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaDetalhes/acessorios/BotaoVoltar.dart';
import 'package:iveg/menu/menu.dart';

class BottomBarFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [          
          BotaoVoltar(
            text: 'Voltar',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaMenu()));
            },
          ),
        ],
      ),
    ),
    );
  }
}