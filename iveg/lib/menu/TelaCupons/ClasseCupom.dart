class Cupom {
  final int id;
  final String nmCupom;
  final String imgProduto;
  final double valorCupom;

  Cupom({
    required this.id,
    required this.nmCupom,
    required this.imgProduto,
    required this.valorCupom,
  });
}

List<Cupom> ltsCupom = [
  Cupom(
      id: 1,
      nmCupom: 'Cupom de Salada',
      imgProduto: 'assets/icones/cupom_icone.png',
      valorCupom: 10),
  Cupom(
      id: 2,
      nmCupom: 'Cupom de Doces',
      imgProduto: 'assets/icones/cupom_icone.png',
      valorCupom: 15),
  Cupom(
      id: 3,
      nmCupom: 'Cupom para seu Pet',
      imgProduto: 'assets/icones/cupom_icone.png',
      valorCupom: 8),
  Cupom(
      id: 4,
      nmCupom: 'Cupom de Sucos',
      imgProduto: 'assets/icones/cupom_icone.png',
      valorCupom: 25),
];
