import 'package:flutter/material.dart';
import 'package:iveg/menu/MenuPet/classes/ClasseLojas.dart';

class ContainerLojas extends StatelessWidget {
  const ContainerLojas({
    Key key,
    @required this.lojas,
  }) : super(key: key);

  final LojasPet lojas;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(lojas.imgLoja),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(lojas.nmLoja,
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(lojas.resumo,
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                    Text(lojas.intervalo,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[300])),
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            SizedBox(width: 5),
                            Text(lojas.star)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}