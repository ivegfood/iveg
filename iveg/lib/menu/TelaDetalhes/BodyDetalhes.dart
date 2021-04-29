import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';
import 'package:iveg/menu/TelaDetalhes/acessorios/ImgSelecionada.dart';

class BodyDetalhes extends StatelessWidget {
  const BodyDetalhes({Key key, @required this.produto}) : super(key: key);

  final ProdutosPet produto;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImagensProduto(produto: produto),
          SizedBox(height: 10),
          Container(
            height: 420,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Descrição:', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(produto.descricao, maxLines: 3),
                  SizedBox(height: 10),
                  Text('Informações Nutricionais:', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(produto.descricao, maxLines: 3),
                  SizedBox(height: 10),
                  Text('Composição Basica: ', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(produto.descricao, maxLines: 3),
                  Text(produto.descricao, maxLines: 3),
                  SizedBox(height: 10),
                  Text('Fabricante', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(produto.descricao, maxLines: 3),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
