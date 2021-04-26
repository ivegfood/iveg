import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';

class DescricaoProduto extends StatelessWidget {
  const DescricaoProduto({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final ProdutosPet produto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            produto.nmProduto,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            produto.descricao,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
