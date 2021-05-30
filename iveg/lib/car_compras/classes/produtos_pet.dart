class ProdutosPet {
  final int id;
  final String? descricao;
  final String nmProduto;
  final List<String> imgProduto;
  final double prProduto;

  ProdutosPet({
    required this.id,
    required this.imgProduto,
    required this.nmProduto,
    required this.prProduto,
    this.descricao,
  });
}

List<ProdutosPet> ltsProdPets = [
  ProdutosPet(
      id: 1,
      imgProduto: [
        "assets/imagens/dogUM.png",
        "assets/imagens/dogDois.png",
        "assets/imagens/dogTres.png",
        "assets/imagens/dogQuatro.png",
      ],
      nmProduto: "Ração superpremium",
      prProduto: 70.99,
      descricao:
          "Uma descrição mais detalhada sobre o produto, que pode conter informações do fabricante, marca, ingredientes, entre outras informações"),
  ProdutosPet(
    id: 2,
    imgProduto: [
      "assets/icones/racao_icone.png",
    ],
    nmProduto: "Raçao premium",
    prProduto: 34.99,
  ),
  ProdutosPet(
    id: 3,
    imgProduto: [
      "assets/icones/coleira_icone.png",
    ],
    nmProduto: "Coleira básica",
    prProduto: 15.99,
  ),
  ProdutosPet(
    id: 4,
    imgProduto: [
      "assets/icones/coleira_icone.png",
    ],
    nmProduto: "Coleira luxo",
    prProduto: 99.99,
  ),
];

const String description = "Descrição dos produtos vendidos na IVEG";
