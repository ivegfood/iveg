import 'package:flutter/material.dart';
import 'package:iveg/menu/MenuPet/classes/ClassesProdutos.dart';

class ContainerTipos extends StatelessWidget {
  const ContainerTipos({
    Key? key,
    required this.tipo,
  }) : super(key: key);

  final TipoProdutos? tipo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 70,
            width: 200,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(tipo!.imgTipo))),
                SizedBox(width: 10),                    
                Text(tipo!.texto),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}