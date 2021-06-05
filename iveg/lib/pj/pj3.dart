import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/pj/alertdialog3.dart';
// import 'package:iveg/pj/alertdialog3.dart';

class TelaPj3 extends StatefulWidget {
  @override
  _TelaPj3State createState() => _TelaPj3State();
}

class _TelaPj3State extends State<TelaPj3> {
  var txtNome = TextEditingController();
  var txtPreco = TextEditingController();

  // RECUPERAR um documento pelo ID
  void getDocumentById(String id) async {
    await FirebaseFirestore.instance
        .collection('prodHumano')
        .doc(id)
        .get()
        .then((valor) {
      txtNome.text = valor.get('nome');
      txtPreco.text = valor.get('preco');
    });
  }

  @override
  Widget build(BuildContext context) {
    // RECUPERAR o ID do produto
    var id = ModalRoute.of(context)?.settings.arguments;

    if (id != null) {
      if (txtNome.text == '' && txtPreco.text == '') {
        getDocumentById(id.toString());
      }
    }
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
      backgroundColor: Colors.green[50],
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(children: [
          TextField(
            controller: txtNome,
            style: TextStyle(color: Colors.brown, fontSize: 16),
            decoration: InputDecoration(
              labelText: 'Nome',
              labelStyle: TextStyle(color: Colors.brown, fontSize: 12),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            controller: txtPreco,
            style: TextStyle(color: Colors.brown, fontSize: 16),
            decoration: InputDecoration(
              labelText: 'Preço',
              labelStyle: TextStyle(color: Colors.brown, fontSize: 12),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                width: 100,
                child: OutlinedButton(
                  child: Text('salvar'),
                  onPressed: () {
                    var db = FirebaseFirestore.instance;

                    if (id == null) {
                      //
                      // ADICIONAR um novo documento
                      //
                      db.collection('prodHumano').add({
                        'nome': txtNome.text,
                        'preco': txtPreco.text,
                      });
                    } else {
                      //
                      // ATUALIZAR o documento
                      //
                      db.collection('prodHumano').doc(id.toString()).update({
                        'nome': txtNome.text,
                        'preco': txtPreco.text,
                      });
                    }
                    showAlertDialog3(context);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                width: 150,
                child: OutlinedButton(
                  child: Text('cancelar'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/pj3');
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                width: 80,
                child: OutlinedButton(
                  child: Text('sair'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/inicial');
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}