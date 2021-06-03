class ProdutosPet {
  late String id;
  late String imgProduto;
  late String nmProduto;
  late String prProduto;

  //Construtor
  ProdutosPet(this.id, this.imgProduto, this.nmProduto, this.prProduto);

  //Converter um DOCUMENTO em um OBJETO
  ProdutosPet.fromJson(Map<String, dynamic> mapa, String id) {
    this.id = id;
    this.imgProduto = mapa['imgProduto'];
    this.nmProduto = mapa['nmProduto'];
    this.prProduto = mapa['prProduto'];
  }

  //Converter um OBJETO em um DOCUMENTO
  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'imgProduto': this.imgProduto,
      'nmProduto': this.nmProduto,
      'prProduto': this.prProduto,
    };
  }
}
