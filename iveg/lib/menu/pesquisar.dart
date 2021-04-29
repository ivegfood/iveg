/* import 'package:flutter/material.dart';

class TelaPesquisa extends StatefulWidget {
  @override
  _TelaPesquisaState createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  var formKey = GlobalKey();
  var txtPesquisa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                              controller: txtPesquisa,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Produtos ou Lugares',
                                icon: Icon(Icons.search),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16.0),
                          width: double.infinity,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            elevation: 5.0,
                            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                            child: Text('Pesquisar',
                                style: TextStyle(fontSize: 16.0)),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Categorias',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5),
            Container(
                margin: EdgeInsets.all(20),
                color: Colors.white,
                height: 370,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    categorias('Mercado'),
                    categorias('Lanches'),
                    categorias('Pets'),
                    categorias('Ração'),
                    categorias('Sorvete'),
                    categorias('Café da Manhã'),
                    categorias('Jantar'),
                    categorias('Coleira'),
                    categorias('Petshop'),
                    categorias('Sobremesas'),
                    categorias('Italiana'),
                    categorias('Francesa'),
                    categorias('Doces'),
                    categorias('Pastel'),
                    categorias('Salgados'),
                    categorias('Padarias'),
                    categorias('Sucos'),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },        
        child: Icon(Icons.close),        
      ),      
    );
  }

  Widget categorias(texto) {
    return Container(
      color: Colors.greenAccent[400],
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Center(
          child: Text(texto),
        ),
      ));
  }
} */