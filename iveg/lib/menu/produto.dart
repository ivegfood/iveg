import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  final String nome;
  final String preco;
  //final String categoria; //aqui diferenciaremos se é humano ou pet
  final String foto;

//construtor
  Produto(this.foto, this.nome, this.preco, );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),

      //espaçamento
      padding: EdgeInsets.all(20),

      //borda
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [ 
         Image.asset(foto),
         Text(nome,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
         Text(preco,
              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),

        ],
      ),
    );
  }
}
