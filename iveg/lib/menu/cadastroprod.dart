import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
  var txtPreco = TextEditingController();


  // RECUPERAR um documento pelo ID
  void getDocumentById(String id) async{

    await FirebaseFirestore.instance
      .collection('prodHumano').doc(id).get()
      .then((valor) {
        txtNome.text = valor.get('nome');
        txtPreco.text = valor.get('preco');
    });

  }

  @override
  Widget build(BuildContext context) {

    // RECUPERAR o ID do produto
    var id = ModalRoute.of(context)?.settings.arguments;

    if ( id != null){
      if (txtNome.text == '' && txtPreco.text == ''){
        getDocumentById(id.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(children: [
          TextField(
            controller: txtNome,
            style: TextStyle(color: Colors.black, fontSize: 36),
            decoration: InputDecoration(
              labelText: 'Nome',
              labelStyle: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            controller: txtPreco,
            style: TextStyle(color: Colors.black, fontSize: 36),
            decoration: InputDecoration(
              labelText: 'Preço',
              labelStyle: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: 150,
                decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                child: TextButton(
                  child: Text('salvar', 
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  onPressed: () {

                    var db = FirebaseFirestore.instance;

                    if ( id == null){
                      //
                      // ADICIONAR um novo documento
                      //
                      db.collection('prodHumano').add(
                        {
                          'nome'  : txtNome.text,
                          'preco' : txtPreco.text,
                        }
                      );
                    }else{
                      //
                      // ATUALIZAR o documento
                      //
                      db.collection('prodHumano').doc(id.toString()).update(
                        {
                          'nome'  : txtNome.text,
                          'preco' : txtPreco.text,
                        }
                      );
                    }
                    Navigator.pop(context);

                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 150,
                decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                child: TextButton(
                  child: Text('cancelar', 
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        )),
                        onPressed: () {
                          Navigator.pop(context);
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
