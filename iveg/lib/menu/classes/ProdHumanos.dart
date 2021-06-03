class ProdHumanos {
  late String id;
  late String imagem;
  late String nome;
  late String preco;

  //Construtor
  ProdHumanos(this.id, this.imagem, this.nome, this.preco);

  //Converter um DOCUMENTO em um OBJETO
  ProdHumanos.fromJson(Map<String, dynamic> mapa, String id) {
    this.id = id;
    this.imagem = mapa['imagem'];
    this.nome = mapa['nome'];
    this.preco = mapa['preco'];
  }

  //Converter um OBJETO em um DOCUMENTO
  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'imagem': this.imagem,
      'nome': this.nome,
      'preco': this.preco,
    };
  }
}
