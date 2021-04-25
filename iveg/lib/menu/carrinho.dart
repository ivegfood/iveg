import 'package:flutter/material.dart';
import 'package:iveg/car_compras/bodyCarrinho.dart';
import 'package:iveg/car_compras/bBarCarrinho.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';

class TelaCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCarrinho(context),
      body: BodyCarrinho(),
      bottomNavigationBar: BBarCarrinho(),
      backgroundColor: Colors.green,
    );
  }

  AppBar appBarCarrinho(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation: 0,
      title: Center(
        child: Column(
          children: [
            Text(
              "Pedido",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "${carCompras.length} items",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
