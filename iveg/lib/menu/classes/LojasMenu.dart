class LojasMenu{

  late String id;
  late String nmLoja;
  late String imgLoja;

  //Construtor
  LojasMenu(this.id,this.nmLoja,this.imgLoja);

  //Converter um DOCUMENTO em um OBJETO
  LojasMenu.fromJson(Map<String,dynamic>mapa, String id){
    this.id = id;
    this.nmLoja = mapa['nmLoja'];
    this.imgLoja = mapa['imgLoja'];
  }

  //Converter um OBJETO em um DOCUMENTO
  Map<String,dynamic> toJson(){
    return {
      'id'    : this.id,
      'nmLoja'  : this.nmLoja,
      'imgLoja' : this.imgLoja,
    };
  }

}