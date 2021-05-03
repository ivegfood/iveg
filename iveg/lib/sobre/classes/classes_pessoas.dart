import 'package:flutter/cupertino.dart';

class Pessoas {
  final String nome;
  final String foto;
  final String descricao;
  final int forca;
  final int destreza;
  final int agilidade;
  final int inteligencia;

  Pessoas({
    @required this.nome,
    @required this.foto,
    @required this.descricao,
    this.forca,
    this.destreza,
    this.agilidade,
    this.inteligencia,
  });
}

List<Pessoas> ltsPessoas = [
  Pessoas(
      nome: 'Jander Raul',
      foto: 'assets/imagens/JanderRaul.jpeg',
      descricao: 'Desenvolvedor Full-Stack',
      forca: 3,
      destreza: 7,
      agilidade: 5,
      inteligencia: 9),
  Pessoas(
      nome: 'Marcelo Claro',
      foto: 'assets/imagens/mcs.jpg',
      descricao: 'Desenvolvedor Full-Stack',
      forca: 10,
      destreza: 3,
      agilidade: 2,
      inteligencia: 9),
  Pessoas(
      nome: 'Marcelo Giacomini',
      foto: 'assets/imagens/marceloBonato.png',
      descricao: 'Desenvolvedor Full-Stack',
      forca: 5,
      destreza: 6,
      agilidade: 4,
      inteligencia: 7),
];
