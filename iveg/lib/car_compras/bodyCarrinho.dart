import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';
import 'package:iveg/car_compras/containerProd.dart';

class BodyCarrinho extends StatefulWidget {
  @override
  _BodyCarrinhoState createState() => _BodyCarrinhoState();
}

class _BodyCarrinhoState extends State<BodyCarrinho> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carCompras.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Dismissible(
          key: Key(carCompras[index].produto.id.toString()),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            setState(() {
              carCompras.removeAt(index);
            });
          },
          background: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Spacer(),
                Icon(Icons.delete, color: Colors.white),
              ],
            ),
          ),
          child: ContainerProd(carrinho: carCompras[index]),
        ),
      ),
    );
  }
}
