import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';
import 'package:iveg/menu/TelaDetalhes/BodyDetalhes.dart';
import 'package:iveg/menu/TelaDetalhes/BottomBarDetalhes.dart';

class TelaDetalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Center(child: Text(ltsProdPets[0].nmProduto, style: TextStyle(fontSize: 24),)),
      ),
      body: BodyDetalhes(produto: ltsProdPets[0]),
      bottomNavigationBar: BottomBarDetalhes(),
    );
  }
}

