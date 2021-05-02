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
      foto: 'assets/imagens/person.png',
      descricao: 'Desenvolvedor Full-Stack',
      forca: 0,
      destreza: 0,
      agilidade: 0,
      inteligencia: 0),
  Pessoas(
      nome: 'Marcelo Giacomini',
      foto: 'assets/imagens/person.png',
      descricao: 'Desenvolvedor Full-Stack',
      forca: 0,
      destreza: 0,
      agilidade: 0,
      inteligencia: 0),
];
