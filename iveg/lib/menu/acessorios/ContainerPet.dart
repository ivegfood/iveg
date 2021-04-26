import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';

class ContainerPet extends StatelessWidget {
  const ContainerPet({
    Key key,
    @required this.carCompras,
    @required this.press,
  }) : super(key: key);

  final MeuCarrinho carCompras;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(1),
              height: 30,
              width: 30,
              child: Image.asset(carCompras.produto.imgProduto[0])),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(carCompras.produto.nmProduto,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                Text('R\$ ${carCompras.produto.prProduto}',
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
