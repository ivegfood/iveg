import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/model/Veg.dart';

//
// TELA PRINCIPAL
//
class TelaRemover extends StatefulWidget {
  @override
  _TelaRemoverState createState() => _TelaRemoverState();
}

class _TelaRemoverState extends State<TelaRemover> {
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
    return Dismissible(
      key: Key(veg.id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            elevation: 12,
            title: Text("Excluir?"),
            content: Text("Deseja excluir esse produto?"),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Seu produto não será excluido"),
                        duration: Duration(seconds: 2)));
                  },
                  child: Text("Não")),
              FlatButton(
                  onPressed: () {
                    prodhumano.doc(veg.id).delete();
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Produto excluido com sucesso!!!"),
                        duration: Duration(seconds: 2)));
                  },
                  child: Text("Sim")),
            ],
          ),
        );
      },
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Spacer(),
            Icon(Icons.delete, color: Colors.white),
          ],
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xFFF5F6F9), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                veg.nome,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
                maxLines: 2,
              ),
              Spacer(),
              Text.rich(
                TextSpan(
                  text: "R\$${veg.preco}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red[400],
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
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
    );
  }
}
