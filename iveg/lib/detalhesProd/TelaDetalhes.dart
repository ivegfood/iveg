import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';
import 'package:iveg/detalhesProd/BodyDetalhes.dart';
import 'package:iveg/detalhesProd/acessorios/BotaoVoltar.dart';

class TelaDetalhes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final RecebeProduto recebe =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: BotaoVoltar(),
      body: BodyDetalhes(product: recebe.produto),
    );
  }
}

class RecebeProduto {
  final ProdutosPet produto;

  RecebeProduto({@required this.produto});
}
