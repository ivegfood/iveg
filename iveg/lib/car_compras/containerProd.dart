import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';

class ContainerProd extends StatelessWidget {
  const ContainerProd({
    Key? key,
    required this.carrinho,
  }) : super(key: key);

  final MeuCarrinho carrinho;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),      
      child: Row(      
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(carrinho.produto.imgProduto[0]),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                carrinho.produto.nmProduto,
                style: TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "R\$${carrinho.produto.prProduto}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.red[400]),
                  children: [
                    TextSpan(
                        text: " x${carrinho.qtdItens}",
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
