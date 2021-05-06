import 'package:flutter/cupertino.dart';

class Pessoas {
  final String nome;
  final String foto;
  final String descricao;

  Pessoas({
    @required this.nome,
    @required this.foto,
    @required this.descricao,
  });
}

List<Pessoas> ltsPessoas = [
  Pessoas(
      nome: 'Jander Raul',
      foto: 'assets/imagens/JanderRaul.jpeg',
      descricao: 'Desenvolvedor Full-Stack',
      ),
  Pessoas(
      nome: 'Marcelo Claro',
      foto: 'assets/imagens/mcs.jpg',
      descricao: 'Desenvolvedor Full-Stack',
      ),
  Pessoas(
      nome: 'Marcelo Giacomini',
      foto: 'assets/imagens/marceloBonato.png',
      descricao: 'Desenvolvedor Full-Stack',
      ),
];
