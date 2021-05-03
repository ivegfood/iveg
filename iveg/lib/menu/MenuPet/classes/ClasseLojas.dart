import 'package:flutter/cupertino.dart';

class LojasPet {
  final int id;
  final String nmLoja;
  final String imgLoja;
  final String resumo;
  final String intervalo;
  final String star;

  LojasPet({
    @required this.id,
    @required this.nmLoja,
    @required this.imgLoja,
    @required this.resumo,
    @required this.intervalo,
    @required this.star,
  });
}

List<LojasPet> ltsLojas = [
  LojasPet(
      id: 1,
      nmLoja: 'Loja 1',
      imgLoja: 'assets/icones/loja_icone.png',
      star: '4.5',
      resumo: 'Vestuario pet em geral',
      intervalo: 'R\$ 15,00 - 59,99'),
  LojasPet(
      id: 2,
      nmLoja: 'Loja 2',
      imgLoja: 'assets/imagens/lojaTwo.png',
      star: '4.8',
      resumo: 'Ração, Higiene e Lazer',
      intervalo: 'R\$ 19,00 - 54,00'),
  LojasPet(
      id: 3,
      nmLoja: 'Loja 3',
      imgLoja: 'assets/imagens/lojaTres.png',
      star: '4.7',
      resumo: 'Brinquedos pet',
      intervalo: 'R\$ 2,99 - 23,99'),
  LojasPet(
      id: 4,
      nmLoja: 'Loja 4',
      imgLoja: 'assets/imagens/lojaQuatro.png',
      star: '5.0',
      resumo: 'Casinhas para pets',
      intervalo: 'R\$ 120,00 - 380,00'),
];
