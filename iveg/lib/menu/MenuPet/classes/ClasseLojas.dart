class LojasPet {
  late String id;
  late String nmLoja;
  late String imgLoja;
  late String resumo;
  late String intervalo;
  late String star;

  LojasPet({
    required this.id,
    required this.nmLoja,
    required this.imgLoja,
    required this.resumo,
    required this.intervalo,
    required this.star,
  });

  LojasPet.fromJson(Map<String, dynamic> mapa, String id) {
    this.id = id;
    this.nmLoja = mapa['nmLoja'];
    this.imgLoja = mapa['imgLoja'];
    this.resumo = mapa['resumo'];
    this.intervalo = mapa['intervalo'];
    this.star = mapa['star'];
  }

  //Converter um OBJETO em um DOCUMENTO
  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'nmLoja': this.nmLoja,
      'imgLoja': this.imgLoja,
      'resumo': this.resumo,
      'intervalo': this.intervalo,
      'star': this.star,
    };
  }
}
