import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/produtos_pet.dart';
import 'package:iveg/detalhesProd/DescricaoProduto.dart';
import 'package:iveg/detalhesProd/ImagemProduto.dart';
import 'package:iveg/detalhesProd/acessorios/BotaoAdicionar.dart';
import 'package:iveg/detalhesProd/acessorios/ContainerAredondado.dart';

class BodyDetalhes extends StatelessWidget {
  final ProdutosPet product;

  const BodyDetalhes({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagemProduto(produto: product),
        ContainerAredondado(
          color: Colors.white,
          child: Column(
            children: [
              DescricaoProduto(
                produto: product,
              ),
              ContainerAredondado(
                color: Color(0xFFF6F7F9),
                child: ContainerAredondado(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 40,
                      top: 15,
                    ),
                    child: BotaoAdicionar(
                      texto: "Adicionar",
                      press: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
