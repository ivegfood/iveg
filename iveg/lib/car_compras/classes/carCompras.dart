class CarCompras{

  late String id;
  late String imgProduto;
  late String nmProduto;
  late String prProduto;
  late String qtdItens;

  //Construtor
  CarCompras(this.id,this.imgProduto,this.nmProduto, this.prProduto, this.qtdItens);

  //Converter um DOCUMENTO em um OBJETO
  CarCompras.fromJson(Map<String,dynamic>mapa, String id){
    this.id = id;
    this.imgProduto = mapa['imgProduto'];
    this.nmProduto = mapa['nmProduto'];
    this.prProduto = mapa['prProduto'];
    this.qtdItens = mapa['qtdItens'];
  }

  //Converter um OBJETO em um DOCUMENTO
  Map<String,dynamic> toJson(){
    return {
      'id'    : this.id,
      'imgProduto'  : this.imgProduto,
      'nmProduto' : this.nmProduto,
      'prProduto' : this.prProduto,
      'qtdItens' : this.qtdItens,
    };
  }

}