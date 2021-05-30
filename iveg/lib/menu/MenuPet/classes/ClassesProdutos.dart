import 'package:flutter/cupertino.dart';

class TipoProdutos {
  final String imgTipo;
  final String texto;

  TipoProdutos({required this.imgTipo, required this.texto});
}

List<TipoProdutos> ltsTipos = [
  TipoProdutos(imgTipo: 'assets/imagens/dogUM.png', texto: 'Alimentação'),
  TipoProdutos(imgTipo: 'assets/imagens/petShampoo.png', texto: 'Higiene'),
  TipoProdutos(imgTipo: 'assets/imagens/dogRoupa.png', texto: 'Vestuario'),
  TipoProdutos(imgTipo: 'assets/imagens/petToy.png', texto: 'Lazer'),
  TipoProdutos(imgTipo: 'assets/imagens/dogHouse.png', texto: 'Habitação'),
];