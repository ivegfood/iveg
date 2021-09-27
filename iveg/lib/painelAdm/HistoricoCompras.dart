class Historico{

  late String id;
  late String data;
  late String cliente;
  late String valor;

  //Construtor
  Historico(this.id,this.data,this.cliente, this.valor);

  //Converter um DOCUMENTO em um OBJETO
  Historico.fromJson(Map<String,dynamic>mapa, String id){
    this.id = id;
    this.data = mapa['data'];
    this.cliente = mapa['cliente'];
    this.valor = mapa['valor'];
  }

  //Converter um OBJETO em um DOCUMENTO
  Map<String,dynamic> toJson(){
    return {
      'id'    : this.id,
      'data'  : this.data,
      'cliente' : this.cliente,
      'valor' : this.valor,
    };
  }

}