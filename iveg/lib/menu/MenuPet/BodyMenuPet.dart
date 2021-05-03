import 'package:flutter/material.dart';
import 'package:iveg/menu/MenuPet/classes/ClasseLojas.dart';
import 'package:iveg/menu/MenuPet/classes/ClassesProdutos.dart';
import 'package:iveg/menu/MenuPet/acessorios/ContainerTipos.dart';
import 'package:iveg/menu/MenuPet/acessorios/ContainerLojas.dart';
import 'package:iveg/menu/TelaProdutoPet/TelaPet.dart';

class BodyMenuPet extends StatelessWidget {
  const BodyMenuPet({Key key, this.tipos, this.lojas}) : super(key: key);
  final List<TipoProdutos> tipos;
  final List<LojasPet> lojas;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    ...List.generate(ltsTipos.length,
                        (index) => ContainerTipos(tipo: tipos[index])),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Text('Lojas',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            ...List.generate(ltsLojas.length,
                (index) => InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaPet()));
                  },
                  child: ContainerLojas(lojas: lojas[index]))),
          ],
        ),
      ),
    );
  }
}
