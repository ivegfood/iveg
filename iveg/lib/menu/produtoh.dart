import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/model/Veg.dart';

//
// TELA PRINCIPAL
//
class TelaProdutoh extends StatefulWidget {
  @override
  _TelaProdutohState createState() => _TelaProdutohState();
}

class _TelaProdutohState extends State<TelaProdutoh> {
  //Referenciar a coleção nomeada "cafes"
  late CollectionReference prodhumano;

  @override
  void initState() {
    super.initState();
    prodhumano = FirebaseFirestore.instance.collection('prodHumano');
  }

  //Aparência do item do ListView
  Widget exibirDocumento(item) {
    //Converter um DOCUMENTO em um OBJETO
    Veg veg = Veg.fromJson(item.data(), item.id);
    return Container(
      padding: EdgeInsets.all(5),
      child: ListTile(
        title: Text(veg.nome, style: TextStyle(fontSize: 24)),
        subtitle: Text('R\$ ${veg.preco}', style: TextStyle(fontSize: 22)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VEG',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      //
      // EXIBIR os documentos da coleção de "produtos"
      //
      body: Container(
        padding: EdgeInsets.all(30),
        child: StreamBuilder<QuerySnapshot>(

            //fonte de dados
            stream: prodhumano.snapshots(),

            //definir a aparência dos documentos que serão exibidos
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(child: Text('Erro ao conectar ao Firestore'));

                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());

                default:
                  final dados = snapshot.requireData;

                  return ListView.builder(
                      itemCount: dados.size,
                      itemBuilder: (context, index) {
                        return exibirDocumento(dados.docs[index]);
                      });
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/cadastroprod');
        },
      ),
    );
  }
}
