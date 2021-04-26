import 'package:flutter/material.dart';

class ProdutosPet {
  final int id;
  final String nmProduto, descricao;
  final List<String> imgProduto;
  final double prProduto;

  ProdutosPet({
    @required this.id,
    @required this.imgProduto,
    @required this.nmProduto,
    @required this.prProduto,
    @required this.descricao,
  });
}

List<ProdutosPet> ltsProdPets = [
  ProdutosPet(
    id: 1,
    imgProduto: [
      "assets/icones/racao_icone.png",
    ],
    nmProduto: "Ração superpremium",
    prProduto: 70.99,
    descricao: "Pequena descrição sobre o produto apresentado, conter principais informações pertinentes a venda",
  ),
  ProdutosPet(
    id: 2,
    imgProduto: [
      "assets/icones/racao_icone.png",
    ],
    nmProduto: "Raçao premium",
    prProduto: 34.99,
    descricao: "Pequena descrição sobre o produto apresentado, conter principais informações pertinentes a venda",
  ),
  ProdutosPet(
    id: 3,
    imgProduto: [
      "assets/icones/coleira_icone.png",
    ],
    nmProduto: "Coleira básica",
    prProduto: 15.99,
    descricao: "Pequena descrição sobre o produto apresentado, conter principais informações pertinentes a venda",
  ),
  ProdutosPet(
    id: 4,
    imgProduto: [
      "assets/icones/coleira_icone.png",
    ],
    nmProduto: "Coleira luxo",
    prProduto: 99.99,
    descricao: "Pequena descrição sobre o produto apresentado, conter principais informações pertinentes a venda",
  ),
];

const String description =
    "Descrição dos produtos vendidos na IVEG";
